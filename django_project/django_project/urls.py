from django.contrib import admin
from django.urls import path,include
#from rest_framework.authtoken import views
from django import views
from rest_framework import viewsets
from register.views import UserDetailAPI, RegisterUserAPIView

from rest_framework.routers import DefaultRouter



urlpatterns = [
    path('admin/', admin.site.urls),
   path('', include('register.urls')),
    #path('api-auth/', include('rest_framework.urls'))
   # path('', include(router.urls) ) ,
  #  path("", include("django_nextjs.urls"))
]

