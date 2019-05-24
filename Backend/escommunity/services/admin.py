from django.contrib import admin
from .models import Service


# Register your models here.
# configuración basica para el admistrador
class serviceAdmin(admin.ModelAdmin):
    readonly_fields=('created','updated') #Capos de solo lectura

#Registramos el servicio y su configuracion
admin.site.register(Service, serviceAdmin)    

