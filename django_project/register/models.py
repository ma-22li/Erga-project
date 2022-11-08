from asyncio import AbstractServer
from enum import unique
from django.db import models

from django.contrib.auth.models import AbstractUser,UserManager
from versatileimagefield.fields import VersatileImageField, PPOIField

from django.db import models

# Create your models here.
class User(AbstractUser):
     full_name = models.CharField(blank=False, max_length=30)
     username = models.CharField(blank=False, max_length=32, unique=True)
     image = VersatileImageField(
         'Image',
         upload_to='images/',
         ppoi_field='image_ppoi' 
     )
     image_ppoi = PPOIField()
     interests = models.CharField(max_length = 200)
     USERNAME_FIELD = 'username'
     REQUIRED_FIELDS = []


class city(models.Model):
    city= models.CharField(max_length=50)
    user = models.ForeignKey(User,  on_delete=models.CASCADE)
    
    