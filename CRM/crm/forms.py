from django import forms
from django.forms import widgets
from crm import models
from django.forms import ValidationError
from django.core.validators import RegexValidator
from crm.models import UserProfile, Customer, ConsultRecord, Enrollment, PaymentRecord, ClassList, CourseRecord


class BaseForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(BaseForm, self).__init__(*args, **kwargs)
        for field in self.fields.values():
            field.widget.attrs.update({
                'class': 'form-control',
                'placeholder': f"请输入{field.label}"
            })


class UserRegForm(BaseForm):

    re_password = forms.CharField(
        max_length=20,
        min_length=6,
        label='确认密码',
        widget=forms.widgets.PasswordInput(attrs={'class': 'form-control'})
    )

    email = forms.EmailField(
        validators=[RegexValidator('^[a-z0-9A-Z]+[-|a-z0-9A-Z._]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$'
                                   , '邮箱格式错误'), ],
        label='邮箱',

    )

    mobile = forms.CharField(
        validators=[RegexValidator('^1[3-9](\d){9}$', '手机号格式错误')],
        label='手机',
        widget=forms.widgets.NumberInput()
    )

    class Meta:
        model = models.UserProfile
        fields = ['email', 'password', 're_password', 'name', 'mobile']
        labels = {
            'password': '密码',
            'name': '姓名',
            'mobile': '手机',
        }
        widgets = {
            'email': forms.widgets.EmailInput,
            'password': forms.widgets.PasswordInput,
            'name': forms.widgets.TextInput,
            'mobile': forms.widgets.NumberInput,
        }

    def clean_email(self):
        # 判断邮箱是否被注册
        email = self.cleaned_data.get('email')
        ret = UserProfile.objects.filter(email=email)
        if ret:
            raise ValidationError('邮箱已存在')
        else:
            return email

    def clean(self):
        # 判断两次密码输入是否一致
        password = self.cleaned_data.get('password')
        re_password = self.cleaned_data.get('re_password')
        if password == re_password and password and re_password:
            self.cleaned_data.pop('re_password')
            return self.cleaned_data
        else:
            self.add_error('re_password', '两次密码输入不一致')
            raise ValidationError('两次密码输入不一致')


class AddCustomerForm(BaseForm):

    class Meta:
        model = Customer
        fields = '__all__'

        widgets = {
            'course': forms.widgets.SelectMultiple(),
            'birthday': forms.widgets.DateInput(attrs={'type': 'date'})
        }


class CustomerRecordForm(BaseForm):
    def __init__(self, *args, **kwargs):
        super(CustomerRecordForm, self).__init__(*args, **kwargs)
        self.fields['customer'].choices = Customer.objects.filter(consultant=self.instance.consultant)\
            .values_list('id', 'name')
        self.fields['consultant'].choices = UserProfile.objects.filter(name=self.instance.consultant).\
            values_list('id', 'name')

    class Meta:
        model = ConsultRecord
        fields = '__all__'

        widgets = {
            'date': forms.widgets.DateInput(attrs={'type': 'date'})
        }


class EnrollForm(BaseForm):
    # def __init__(self, *args, **kwargs):
    #     super().__init__(*args, **kwargs)
    #     # 限制添加报名表的时候只能选自己私户
    #     print(self.instance.customer)
    #     self.fields['customer'].choices = [(self.instance.customer.id, self.instance.customer.name)]

    def __init__(self, *args, **kwargs):
        super(EnrollForm, self).__init__(*args, **kwargs)
        print(self.instance.customer)
        self.fields['customer'].choices = [(self.instance.customer.id, self.instance.customer.name)]

    class Meta:
        model = Enrollment
        exclude = ['delete_status', 'contract_approved']

    widgets = {
        'enroll_date': forms.widgets.DateInput(attrs={'type': 'date'})
    }


class PayForm(BaseForm):
    def __init__(self, *args, **kwargs):
        super(PayForm, self).__init__(*args, **kwargs)
        print(self.instance.customer)
        self.fields['customer'].choices = [(self.instance.customer.id, self.instance.customer.name)]



    class Meta:
        model = PaymentRecord
        exclude = ['delete_status', 'data']

    widgets = {
        'confirm_date': forms.widgets.DateInput(attrs={'type': 'date'})
    }


class ClassForm(BaseForm):
    class Meta:
        model = ClassList
        fields = '__all__'

    widgets = {
        'start_date': forms.widgets.DateInput(attrs={'type': 'date'})
    }


class CourseRecordForm(BaseForm):
    def __init__(self, *args, **kwargs):
        super(CourseRecordForm, self).__init__(*args, **kwargs)
        self.fields['re_class'].choices = [(self.instance.re_class_id, self.instance.re_class)]

    class Meta:
        model = CourseRecord
        fields = '__all__'
