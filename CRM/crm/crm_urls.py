from django.conf.urls import url
from crm import views, class_views

urlpatterns = [
    url(r'^login/$', views.LoginView.as_view(), name='login'),
    url(r'^register/$', views.RegView.as_view(), name='register'),
    url(r'^customer_list/$', views.CustomerView.as_view(), name='customer_list'),
    url(r'^my_customer/$', views.CustomerView.as_view(), name='my_customer'),
    url(r'^add_customer/$', views.OpCustomerView.as_view(), name='add_customer'),
    url(r'^edit_customer/(\d+)/$', views.OpCustomerView.as_view(), name='edit_customer'),
    url(r'^customer_record/(?P<cid>\d+)/$', views.customer_record, name='customer_record'),
    url(r'^add_record/$', views.add_record, name='add_record'),
    url(r'^edit_record/(\d+)/$', views.add_record, name='edit_record'),

    # 报名信息
    url(r'^enrollment_list/(\d+)/$', views.show_enrollment, name='enrollment_list'),
    url(r'^add_enrollment/(\d+)/$', views.OpEnrollmentView.as_view(), name='add_enrollment'),
    url(r'^edit_enrollment/(?P<enroll_id>\d+)/(?P<cid>\d+)/$', views.OpEnrollmentView.as_view(), name='edit_enrollment'),

    # 缴费信息
    url(r'^pay_list/(\d+)/$', views.pay_list, name='pay_list'),
    url(r'^add_pay/(\d+)/$', views.op_pay, name='add_pay'),
    url(r'^edit_pay/(?P<pay_id>\d+)/(?P<cid>\d+)/$', views.op_pay, name='edit_pay'),



    # 班级关联
    # 班级列表
    url(r'^class_list/$', class_views.ClassView.as_view(), name='class_list'),
    url(r'^add_class/$', class_views.op_class, name='add_class'),
    url(r'^edit_class/(\d+)$', class_views.op_class, name='edit_class'),

    # 上课记录
    url(r'^class_record/$', class_views.class_record, name='class_record'),
    url(r'^add_class_record/$', class_views.add_record, name='add_class_record'),
    url(r'^edit_class_record/(\d+)$', class_views.add_record, name='edit_class_record'),
]
