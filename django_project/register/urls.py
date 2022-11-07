from django.urls import path
from django import views
from . import views

urlpatterns = [
    path('register', views.signup, name='signup'),
]