from django.contrib.auth.forms import UserCreationForm
from django.views.generic import CreateView
from django.urls  import reverse_lazy
from django import forms
from django.contrib.auth.models import Group
from blog.forms import registroalumno
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
# Create your views here.

def signUp(request):
    registroform = registroalumno()
    if request.method == 'POST':
        registroform = registroalumno(data=request.POST)
        if registroform.is_valid():
            boleta = request.POST.get("boleta")
            name = request.POST.get("name")
            lname = request.POST.get("lname")
            password = request.POST.get("password1")
            correo = request.POST.get("correo")
            if not User.objects.filter(username=boleta).exists():
                user = User.objects.create_user(first_name=name,username=boleta, email=correo, password=password, last_name=lname)
                user.is_staff = True 
                user.save()
                g = Group.objects.get(name='Alumnos') 
                g.user_set.add(user)                    
                return redirect('password_reset_complete')
            else:
                return redirect('/accounts/signup'+'?fail')

    return render(request,"registration/signup.html",{"registroform":registroform})    