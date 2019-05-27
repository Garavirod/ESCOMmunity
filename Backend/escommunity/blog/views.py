from django.shortcuts import render, redirect
from .models import *
from django.urls import reverse
from services.models import Service
from django.views.generic.edit import CreateView
from .forms import postalumno
from .models import AlumnoPost
from django.utils.timezone import now

# Create your views here.
def Blog(request,section):
    postform = postalumno()
    section = section.upper()
    posts = Entry.objects.filter(service__nameModule=section)
    service = Service.objects.get(nameModule=section)
    allpost = AlumnoPost.objects.filter(service=service) 
    if request.method == 'POST':
        postform = postalumno(data=request.POST)
        if postform.is_valid():
            titulo = request.POST.get("title")
            contenido = request.POST.get("content")
            pos = AlumnoPost(title=titulo,content=contenido, published=now(),service=service)
            pos.save()
            allpost = AlumnoPost.objects.filter(service=service)            
            print("ESTO SON LOS POST: ",allpost)
            return redirect('/modulo/'+section+'?ok')
    
    return render(request,"blog/modulo.html",{"service":service,"posts":posts,"postform":postform,'allpost':allpost})

def PostCreate(request,section):
    postform = postalumno()
    if request.method == 'POST':
        postform = postalumno(data=request.POST)
        if postform.is_valid():
            title = request.POST.get("title")
            content = request.POST.get("content")
            return redirect(reverse('create')+"?ok")
    return render(request,"blog/post.html",{"postform":postform})