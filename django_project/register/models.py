from enum import unique
from django.db import models
from django.contrib.auth.models import AbstractBaseUser,UserManager
from versatileimagefield.fields import VersatileImageField, PPOIField

from django.db import models

# Create your models here.
class User(AbstractBaseUser):
    username= models.CharField(max_length=50)
    email = models.EmailField(max_length=254, unique=True)
    password= models.CharField(max_length= 50)
    city= models.ManyToManyField('city', related_name='+')
    image = VersatileImageField(
        'Image',
        upload_to='images/',
        ppoi_field='image_ppoi' 
    )
    image_ppoi = PPOIField()
    interests = models.CharField(max_length = 200)
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = UserManager()

# Create your models here.
# class User(AbstractBaseUser):
#     username = models.CharField(blank=False, max_length=32, unique=True)
#     city= models.ManyToManyField('city', related_name='+')
#     image = VersatileImageField(
#         'Image',
#         upload_to='images/',
#         ppoi_field='image_ppoi' 
#     )
#     image_ppoi = PPOIField()
#     interests = models.CharField(max_length = 200)
#     USERNAME_FIELD = 'username'
#     REQUIRED_FIELDS = []

class city(models.Model):
    city= models.CharField(max_length=50)
    
    