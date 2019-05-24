from django.shortcuts import render
from .models import Service
# Create your views here.
def services(request):
    secciones = Service.objects.all()
    return render(request,"services/Inicio.html",{'secciones':secciones})

# def modulo(request,mod):
#     seccion= Service.objects.filter(nameModule=mod)
#     return render(request,"servicios/modulo.html",{'secciones':seccion})