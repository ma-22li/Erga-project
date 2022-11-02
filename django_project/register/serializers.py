from rest_framework import serializers
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
