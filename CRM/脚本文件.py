import os
import random

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "CRM重构.settings")

    import django
    django.setup()
    from crm.utils import make_qq
    from crm.models import course_choices

    from crm.models import Customer
    customer_list = (Customer(
        qq=make_qq(),
        qq_name=f'客户{i}',
        name=f'{i}客户',
        course=random.choice(course_choices)[0],
    ) for i in range(500))
    Customer.objects.bulk_create(customer_list)
