from rest_framework import serializers

from django.contrib.auth import get_user_model
User = get_user_model()
from .models import city
from rest_framework.response import Response
from rest_framework import status
from rest_framework.validators import UniqueValidator
from django.contrib.auth.password_validation import validate_password

#Serializer to Get User Details using Django Token Authentication
class CitySerializer(serializers.ModelSerializer):
  class Meta:
    model = city
    fields = [ 'city',]


class UserSerializer(serializers.ModelSerializer):
 # city = CitySerializer(many = True, source= 'CITY')

  class Meta:
    model = User
    fields = ["id", "full_name", "username"]
   
#Serializer to Register User
class RegisterSerializer(serializers.ModelSerializer):
  email = serializers.EmailField(
    required=True,
    validators=[UniqueValidator(queryset=User.objects.all())]
  )
  password = serializers.CharField(
    write_only=True, required=True, validators=[validate_password])
  
  '''city = serializers.PrimaryKeyRelatedField(
    many=True, 
    read_only=False,
    related_name= 'CITY',
    queryset=city.objects.all()
  )'''
  #city = CitySerializer(many = True, source= 'CITY')
  class Meta:
    model = User
    fields = ('email', 'full_name', 'password','username' )
    extra_kwargs = {
      'full_name': {'required': True},
    }
  
  def create(self, validated_data):
    user = User.objects.create(
      username=validated_data['username'],
      email=validated_data['email'],
      full_name=validated_data['full_name'],
     #city= validated_data['city'],
    )
    user.set_password(validated_data['password'])
    user.save()
    return user 