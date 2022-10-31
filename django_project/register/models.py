from enum import unique
from unittest.util import _MAX_LENGTH
from django.db import models
from django.contrib.auth.models import AbstractBaseUser

# Create your models here.
class User(AbstractBaseUser): 
    user_id = models.IntegerField(primary_key=True, unique= True, null= False)
    #username= models.CharField(max_length=50)
    email= models.EmailField(max_length= 254, help_text='example@email.com', unique= True)
    full_name = models.CharField(max_length=50)
    city= models.ForeignKey('city', on_delete=models.CASCADE, related_name='+')
    image = models.ImageField()
    interests = models.CharField(max_length = 200)
    USERNAME_FIELD = 'email'
    EMAIL_FIELD = 'email'
    REQUIRED_FIELDS = []


class city(models.Model):
    user_city= models.CharField(max_length=50)
    user = models.ForeignKey( 'User', on_delete = models.CASCADE, related_name='+')
    