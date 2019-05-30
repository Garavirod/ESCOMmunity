from django.shortcuts import render
from .models import Service
# Create your views here.
def services(request):
    if request.user.is_authenticated:
        sections = Service.objects.all()
        usuario = request.user.get_full_name()
        email = request.user.email
        boleta = request.user.get_username()
        return render(request,"services/Inicio.html",{'sections':sections,'usuario':usuario,'boleta':boleta,'email':email})
    else:
        return render(request,"registration/login.html")