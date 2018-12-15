from django.shortcuts import render, HttpResponse, redirect
from django import views
from django.urls import reverse
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from crm.models import ClassList, CourseRecord
from crm.forms import ClassForm, CourseRecordForm


class ClassView(views.View):
    def get(self, request):
        class_data = ClassList.objects.all()
        return render(request, 'class/class_list.html', {'data': class_data})


def op_class(request, edit_id=None):
    #　获取信息
    edit_obj = ClassList.objects.filter(pk=edit_id).first()
    form_obj = ClassForm(instance=edit_obj)
    if request.method == 'POST':
        form_obj = ClassForm(request.POST, instance=edit_obj)
        if form_obj.is_valid():
            form_obj.save()
            return redirect(reverse('crm:class_list'))
    return render(request, 'class/op_class.html', {'form_obj': form_obj, 'edit_id': edit_id})


def class_record(request):
    class_id = request.GET.get('class')
    record_data = CourseRecord.objects.filter(re_class_id=class_id)
    return render(request, 'class/class_record.html', {'data': record_data, 'class_id': class_id})


def add_record(request, record_id=None):
    # 获取班级id
    cid = request.GET.get('class_id')
    record_obj = CourseRecord.objects.filter(id=record_id).first()
    if record_obj:
        print(111)
        record_obj = CourseRecord.objects.filter(id=record_id).first()
    else:
        record_obj = CourseRecord(re_class=ClassList.objects.filter(id=cid).first())
    data = CourseRecordForm(instance=record_obj)
    if request.method == 'POST':
        data = CourseRecordForm(request.POST, instance=record_obj)
        if data.is_valid():
            data.save()
            return redirect(reverse('crm:class_record')+f'?class={cid}&')
    return render(request, 'class/op_course_record.html', {'data': data})


def study_record(request):
    pass