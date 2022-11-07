''' from rest_framework import serializers
from django.contrib.auth.models import User
from django.contrib.auth import get_user_model

# User Serializer
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields =('full_name','city','image','interests')
        extra_kwargs = {'password': {'write_only': True}}


# Register Serializer
class RegisterSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email','city_id')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(validated_data['username'], validated_data['email'],
         validated_data['password'],validated_data['city_id'])

        return user 
''' 
''' from rest_framework import serializers
from django.contrib.auth.models import User
from django.contrib.auth import get_user_model

# User Serializer
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields =('full_name','city','image','interests')
        extra_kwargs = {'password': {'write_only': True}}


# Register Serializer
class RegisterSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'email','city_id')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(validated_data['username'], validated_data['email'],
         validated_data['password'],validated_data['city_id'])

        return user 
'''
from rest_framework import serializers

from django.contrib.auth import get_user_model
User = get_user_model()
from .models import city
from rest_framework.response import Response
from rest_framework import status
from rest_framework.validators import UniqueValidator
from django.contrib.auth.password_validation import validate_password

#Serializer to Get User Details using Django Token Authentication
class citySerializer(serializers.ModelSerializer):

  class Meta:
    model = city
    fields = ['city']

class UserSerializer(serializers.ModelSerializer):
  
  class Meta:
    model = User
    fields = ["id", "full_name", "username",  ]

#Serializer to Register User
class RegisterSerializer(serializers.ModelSerializer):
  email = serializers.EmailField(
    required=True,
    validators=[UniqueValidator(queryset=User.objects.all())]
  )
  password = serializers.CharField(
    write_only=True, required=True, validators=[validate_password])
  class Meta:
    model = User
    fields = ('username', 'password',
         'email', 'full_name',  )
    extra_kwargs = {
      'full_name': {'required': True},
    }
  
  def create(self, validated_data):
    user = User.objects.create(
      username=validated_data['username'],
      email=validated_data['email'],
      full_name=validated_data['full_name'],
    )
    user.set_password(validated_data['password'])
    user.save()
    return user 
    