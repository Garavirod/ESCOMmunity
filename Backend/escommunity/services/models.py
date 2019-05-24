from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class Service(models.Model):
    nameModule = models.CharField(max_length=200, verbose_name="Nombre del módulo")       
    nameAdmin = models.CharField(max_length=200, verbose_name="Nombre completo del admin") 
    eMail = models.CharField(max_length=200, verbose_name="E-mail del admin") 
    cel = models.CharField(max_length=10, verbose_name="Tel del admin") 
    descModule = models.TextField(verbose_name="Descripcion del módulo",blank=True) 
    image = models.ImageField(verbose_name="Imagen", upload_to="servicios")
    created = models.DateTimeField(auto_now_add=True,verbose_name="Fecha de creación")
    updated = models.DateTimeField(auto_now=True,verbose_name="Fecha de edición")
    user = models.ForeignKey(User,verbose_name="Administrador del módulo",on_delete=models.CASCADE)

    class Meta:
        verbose_name = "servicio"
        verbose_name_plural = "servicios"
        ordering = ["-created"]

    def __str__(self):
            return self.nameModule
        