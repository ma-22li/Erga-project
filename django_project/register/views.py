
from contextlib import _RedirectStream
from django.shortcuts import render, redirect
from django.contrib.auth import  authenticate
from register.form import userForm



# Create your views here.
def signup(request):
    if request.method=='POST':
        form = userForm(request.POST)
        if form.is_valid():
           form.save()
           username = form.cleaned_data.get('username')
           email = form.cleaned_data.get('email')
           password = form.cleaned_data.get('password')
           city = form.cleaned_data.get('city')
           User = authenticate(username=username,email=email,password=password,city=city)
        return render('/home')#redirect('/home')
    else:
        form = userForm()
        return render (request,'signup.html',{'form':form})
        

def home(requset):
    return render(requset,'home.html')


 
