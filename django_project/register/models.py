from enum import unique
from django.db import models
from django.contrib.auth.models import AbstractUser
from versatileimagefield.fields import VersatileImageField, PPOIField


# Create your models here.
class User(AbstractUser):

    full_name = models.CharField(max_length=50)
   
    image = VersatileImageField(
        'Image',
        upload_to='images/',
        ppoi_field='image_ppoi' 
    )
    image_ppoi = PPOIField()
    interests = models.CharField(max_length = 200)

class city(models.Model):
    city= models.CharField(max_length=50)
    user = models.ForeignKey(User,  on_delete=models.CASCADE)
    
    