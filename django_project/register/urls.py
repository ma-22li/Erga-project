from django.urls import path
from .views import RegisterAPI

urlpatterns = [
    path('api/register/', RegisterAPI.as_view(), name='register'),
]