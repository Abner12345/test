from django.contrib import admin
from crm.models import Campuses, ClassList, UserProfile
# Register your models here.


admin.site.register(UserProfile)
admin.site.register(ClassList)
admin.site.register(Campuses)