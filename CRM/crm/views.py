from django.shortcuts import render, HttpResponse, redirect
from django.http import JsonResponse
from django import views
from django.urls import reverse
from django.contrib.auth import authenticate, login, logout
from crm.forms import UserRegForm, AddCustomerForm, CustomerRecordForm, EnrollForm, PayForm
from crm.models import UserProfile, Customer, ConsultRecord, Enrollment, PaymentRecord
from crm.utils import Pagination
from django.db.models import Q
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required

# Create your views here.


class LoginView(views.View):
    # 登录视图
    def get(self, request):
        return render(request, 'login_register/login.html')

    def post(self, request):
        # 获取post请求发送过来的数据
        email = request.POST.get('email')
        pwd = request.POST.get('password')
        check = request.POST.get('7login')
        # 进行auth认证判断
        user_obj = authenticate(request, email=email, password=pwd)
        if user_obj:
            # 获取到了用户对象，对用户对象进行登录操作
            login(request, user_obj)
            # 判断是否需要7天登录
            if check:
                # 设置session为7天
                request.session.set_expiry(7*24*3600)
            else:
                # 设置session的有效期为浏览器关闭
                request.session.set_expiry(0)
            ret = {'res': 1, 'next_url': reverse('crm:customer_list')}
        else:
            # 否则返回错误信息
            ret = {'res': 0, 'error_msg': '用户名或密码错误'}
        return JsonResponse(ret)


class RegView(views.View):
    # 注册视图函数
    def get(self, request):
        form_obj = UserRegForm()
        return render(request, 'login_register/register.html', {'form_obj': form_obj})

    def post(self, request):
        form_obj = UserRegForm(request.POST)
        # 将获取到的数据当做参数传入form_obj对象
        # 判断输出的数据是否合法
        if form_obj.is_valid():
            # 存放到数据库，创建用户
            UserProfile.objects.create_user(**form_obj.cleaned_data)
            ret = {'res': 1, 'next_url': reverse('crm:login')}

        else:
            # 不合法获取errors
            print(form_obj.errors)
            ret = {'res': 0, 'error_msg': form_obj.errors}
        return JsonResponse(ret)


class CustomerView(views.View):
    # 客户页面视图函数
    @method_decorator(login_required)
    def get(self, request):
        # 获取所有的客户信息
        user_data = Customer.objects.all()
        # 获取当前的url参数
        qd = request.GET.copy()
        # 获取当前页面
        current_page = request.GET.get('page', 1)
        # 获取公户和私户信息
        if request.path_info == reverse('crm:my_customer'):
            user_data = Customer.objects.filter(consultant=request.user)
        else:
            user_data = Customer.objects.filter(consultant__isnull=True)
        # 获取搜索关键字
        search_font = request.GET.get('search')
        if search_font:
            user_data = user_data.filter(Q(qq__contains=search_font) | Q(qq_name__contains=search_font) |
                                         Q(name__contains=search_font))
        # 计算总页数
        total_count = user_data.count()
        page_obj = Pagination(current_page, total_count, request.path_info, qd, show_page=5, per_page=10)
        page_html = page_obj.page_html()
        user_data = user_data[page_obj.start: page_obj.end]

        return render(request, 'customer/customer_list.html', {'user_list': user_data, 'pag': page_html})

    def post(self, request):
        # 获取指令
        operate = request.POST.get('choice')
        # 获取选取的id
        id_list = request.POST.getlist('check')
        # 将选中的用户全部进行操作
        if not hasattr(self, '_{}'.format(operate)):
            return HttpResponse('滚')
        getattr(self, '_{}'.format(operate))(id_list)
        # 返回上一个网页
        return redirect(request.META.get('HTTP_REFERER'))

    def _to_public(self, id_list):
        Customer.objects.filter(id__in=id_list).update(consultant=None)

    def _to_private(self, id_list):
        Customer.objects.filter(id__in=id_list).update(consultant=self.request.user)

    def _remove_user(self, id_list):
        Customer.objects.filter(id__in=id_list).delete()


class OpCustomerView(views.View):
    # 添加编辑用户视图函数
    def get(self, request, edit_num=None):
        edit_obj = Customer.objects.filter(id=edit_num).first()
        form_obj = AddCustomerForm(instance=edit_obj)
        return render(request, 'customer/add_customer.html', {'form_obj': form_obj})

    def post(self, request, edit_num=None):
        # 获取数据存到数据库中，返回到客户列表页面
        edit_obj = Customer.objects.filter(id=edit_num).first()
        form_obj = AddCustomerForm(request.POST, instance=edit_obj)
        if form_obj.is_valid():
            # 通过验证的数据，保存
            form_obj.save()
            return redirect(reverse('crm:customer_list'))
        # 否则返回错误信息
        return render(request, 'customer/add_customer.html', {'form_obj': form_obj})


@login_required
def customer_record(request, cid=0):
    if int(cid) == 0:
        # 查询的是自己的记录
        record_list = ConsultRecord.objects.filter(consultant=request.user, delete_status=False)
    else:
        # 查询客户的所以沟通记录
        record_list = ConsultRecord.objects.filter(customer=cid, delete_status=False)
    return render(request, 'customer/customer_record.html', {'record_list': record_list})


def add_record(request, edit_num=None):
    # 获取编辑对象
    record_obj = ConsultRecord.objects.filter(pk=edit_num).first()
    # 如果编辑对象不存在
    if not record_obj:
        # 生成一个只有销售的对象
        record_obj = ConsultRecord(consultant=request.user)
    # 否则给表单设置默认值，将销售设置为自己
    form_obj = CustomerRecordForm(instance=record_obj, initial={'consultant': request.user})
    if request.method == 'POST':
        form_obj = CustomerRecordForm(request.POST, instance=record_obj)
        if form_obj.is_valid():
            form_obj.save()
            return redirect(reverse('crm:customer_record'))
    return render(request, 'customer/add_record.html', {'record_obj': form_obj, 'edit_num':  edit_num})


def show_enrollment(request, eid=0):
    # 1. 点击自己的报名记录
    if int(eid) == 0:
        enr_data = Enrollment.objects.filter(customer__consultant=request.user, delete_status=False)
    else:
        # 2.在list页面按人查看
        enr_data = Enrollment.objects.filter(customer=Customer.objects.filter(id=eid))
    return render(request, 'customer/enroll_list.html', {'data': enr_data})


class OpEnrollmentView(views.View):
    def get(self, request, cid=None, enroll_id=None):
        if enroll_id:
            enroll_obj = Enrollment.objects.filter(id=enroll_id).first()
        else:
            # 创建一个只有customer属性的对象
            enroll_obj = Enrollment(customer=Customer.objects.filter(id=cid).first())
        # 获取form表单
        form_obj = EnrollForm(instance=enroll_obj)
        return render(request, 'customer/add_enroll.html', {'form_obj': form_obj})

    def post(self, request, cid=0, enroll_id=None):
        if enroll_id:
            enroll_obj = Enrollment.objects.filter(id=enroll_id).first()
        else:
            # 创建一个只有customer属性的对象
            enroll_obj = Enrollment(customer=Customer.objects.filter(id=cid).first())
        # 获取报名表中所填的信息
        form_obj = EnrollForm(request.POST, instance=enroll_obj)
        if form_obj.is_valid():
            form_obj.save()
            # 将用户的状态更改为已报名
            Customer.objects.filter(id=cid).update({'status': 'signed'})
            return redirect(reverse('crm:enrollment_list', args=(0,)))
        return render(request, 'customer/add_enroll.html', {'form_obj': form_obj})


def pay_list(request, cid=0):
    if int(cid) == 0:
        pay_data = PaymentRecord.objects.filter(consultant=request.user, delete_status=False)
    else:
        pay_data = PaymentRecord.objects.filter(customer_id=cid)
    return render(request, 'customer/pay_list.html', {'data': pay_data})


def op_pay(request, cid=None, pay_id=None):
    if pay_id:
        pay_obj = PaymentRecord.objects.filter(id=pay_id).first()
    else:
        # 创建一个只有customer属性的对象
        pay_obj = PaymentRecord(customer=Customer.objects.filter(id=cid).first())
    # 获取form表单
    form_obj = PayForm(instance=pay_obj)
    if request.method == 'POST':
        form_obj = PayForm(request.POST, instance=pay_obj)
        if form_obj.is_valid():
            form_obj.save()
            return redirect(reverse('crm:pay_list', args=(0,)))
        return render(request, 'customer/add_pay.html', {'form_obj': form_obj})
    return render(request, 'customer/add_pay.html', {'form_obj': form_obj})
