from django.shortcuts import render
from .models import Entry
from services.models import Service

# Create your views here.
def Blog(request,section):
    section = section.upper()
    posts = Entry.objects.filter(service__nameModule=section)
    print("ESTO ES :",posts)
    service = Service.objects.get(nameModule=section)
    return render(request,"blog/modulo.html",{"service":service,"posts":posts})
