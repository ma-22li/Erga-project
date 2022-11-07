from django.shortcuts import render
from django.shortcuts import render
from django.contrib.auth import  authenticate
from django.shortcuts import render, redirect
from register.forms import SignupForm 

# Create your views here.
def signup(request):
    if request.method=='POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            email = form.cleaned_data.get('email')
            password = form.cleaned_data.get('password')
            city = form.cleaned_data.get('city')

            User = authenticate(username=username,email=email,password=password,city=city)

            return redirect('/login')
    
    else:
        form = SignupForm()
        return render (request,'signup.html',{'form':form})

def home(req):
    return render(req,'home.html')



# Create your views here.

# @api_view(['POST'])
# def RegisterAPI(request):
#     data = request.data
#     serializer = UserSignupSerializer(data=data)
#     if serializer.is_valid():
#         if not User.objects.filter(username=data['email']).exists():
#             user = User.objects.create( username=data['email'], email=data['email'], city_id=data['city_id'], password=make_password(data['password']))
#             user.save()
#             User = User.objects.create(auth=user, name=data['username'], email=data['email'])
#             return Response({'message':'User Created Successfully'}, status=status.HTTP_201_CREATED)
#         else:
#             return Response({'message':'User Already Exists'}, status=status.HTTP_400_BAD_REQUEST)
#     else:
#         return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)