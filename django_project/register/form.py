from django import forms
#from django.contrib.auth.models import User 
from .models import User
from django.contrib.auth import get_user_model
User = get_user_model()


#Creating Signup Form with three fields
class userForm( forms.ModelForm ):

    username = forms.CharField(max_length= 50)
    email = forms.EmailField( max_length= 254, help_text='example@email.com')
    password = forms.CharField(max_length= 50, widget= forms.PasswordInput)
    city = forms.CharField(max_length=50)

    class Meta:
        model = User
        fields = ['username', 'email','password','city']
        
    
     