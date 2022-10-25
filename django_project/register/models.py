
from enum import unique
from unittest.util import _MAX_LENGTH
from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    full_name = models.CharField(max_length=50)
    city= models.ForeignKey('city', on_delete=models.CASCADE, related_name='+')
    image = models.ImageField()
    interests = models.CharField(max_length = 200)

class city(models.Model):
    user_city= models.CharField(max_length=50)
    user = models.ForeignKey( 'User', on_delete = models.CASCADE, related_name='+')
    