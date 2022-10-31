from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import User, city
from django.contrib.auth.models import Group


# admin.register() decorator
@admin.register(User)
class ProductAdmin(admin.ModelAdmin):
    list_display = ('pk', 'username', 'full_name', 'email')
    list_filter = ('username', )
    pass



admin.site.register(city)