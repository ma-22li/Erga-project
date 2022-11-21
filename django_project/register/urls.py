from django.urls import path, include
from django import views
from . views import RegisterUserAPIView , UserDetailAPI
from rest_framework.routers import DefaultRouter





urlpatterns = [
    path("get-details",UserDetailAPI.as_view()),
    path('register/register',RegisterUserAPIView.as_view()),
    #path('register/city',cityApi.as_view() ),
    #path('register/signup', userApi.as_view()),
]