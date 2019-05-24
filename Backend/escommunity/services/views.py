from django.shortcuts import render
from .models import Service
# Create your views here.
def services(request):
    sections = Service.objects.all()
    return render(request,"services/Inicio.html",{'sections':sections})

# def modulo(request,mod):
#     seccion= Service.objects.filter(nameModule=mod)
#     return render(request,"servicios/modulo.html",{'secciones':seccion})