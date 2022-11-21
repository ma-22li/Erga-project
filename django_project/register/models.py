from asyncio import AbstractServer
from enum import unique
from django.db import models

from django.contrib.auth.models import AbstractUser,UserManager
from versatileimagefield.fields import VersatileImageField, PPOIField

from django.db import models

# Create your models here.

class city(models.Model):
    class City_choice(models.TextChoices):
        Riyadh = 'Riy', ('Riyadh')
        Jeddah = 'Jed', ('Jeddah')
        Makkah = 'Mak', ('Makkah')
        Qassim = 'Qas', ('Qassim')
        Hail = 'Hai', ('Hail')

    city = models.CharField(
        max_length=10,
        choices=City_choice.choices,
    )


class User(AbstractUser):
     full_name = models.CharField(blank=False, max_length=30)
     image = VersatileImageField(
         'Image',
         upload_to='images/',
         ppoi_field='image_ppoi' 
     )
     image_ppoi = PPOIField()
     interests = models.CharField(max_length = 200)
     city = models.ForeignKey(city ,related_name='CITY', on_delete=models.CASCADE, null= True, blank= True)
     #USERNAME_FIELD = 'username'
     REQUIRED_FIELDS = []



    
    