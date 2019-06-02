from django.shortcuts import render, redirect
from .models import Service
from blog.models import Entry, AlumnoPost
from blog.forms import resetPassword
from django.contrib.auth.models import User
from django.utils.timezone import now
import datetime
# Create your views here.
def services(request):
    #VERIFIACIÓN DE EL LOGUEO DEL USUARIO
    if request.user.is_authenticated:        
        sections = Service.objects.all()      
        notifications_entry = Entry.objects.filter(created__date=datetime.date.today())
        notifications_post = AlumnoPost.objects.filter(created__date=datetime.date.today())
        usuario = request.user.get_full_name()
        email = request.user.email
        boleta = request.user.get_username()
        #Edición de contraseña
        reset_pass = resetPassword()
        if request.method == "POST":            
            reset_pass = resetPassword(data=request.POST)
            #Validamos formulario
            if reset_pass.is_valid():
                password1 = request.POST.get("password1")
                password2 = request.POST.get("password2")
                correo = request.POST.get("correo")
                #Validmas is las contraeñas son las mimsas
                p = User.objects.get(username=boleta)
                if p.check_password(str(password1)):                    
                    p.set_password(str(password2))
                    p.email = correo
                    p.save()
                    return redirect('password_reset_complete')
                else:
                    return redirect('/Inicio'+'?fail_reset_pass')                       
            
        return render(request,"services/Inicio.html",
                {'sections':sections,
                 'usuario':usuario,
                 'boleta':boleta,
                 'email':email,
                 'reset_pass':reset_pass,
                 'notifications_entry':notifications_entry,
                 'notifications_post':notifications_post})
    else:
        return render(request,"registration/login.html")

def aulas(request):
    if request.user.is_authenticated:
        sections = Service.objects.all()
        usuario = request.user.get_full_name()
        email = request.user.email
        boleta = request.user.get_username()
        return render(request,"services/aulas.html",{'sections':sections,'usuario':usuario,'boleta':boleta,'email':email})
    else:
        return render(request,"registration/login.html")        