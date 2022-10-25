from contextlib import _RedirectStream
from django.shortcuts import render, redirect
from django.contrib.auth import  authenticate
from register.form import userForm



def home(requset):
    return render(requset,'home.html')


 
