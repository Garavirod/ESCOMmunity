from django.db import models
from ckeditor.fields import RichTextField
from django.utils.timezone import now
from django.contrib.auth.models import User
from services.models import Service
# Create your models here.
        
class Entry(models.Model):
    title = models.CharField(max_length=200, verbose_name="Títlo")
    content = RichTextField(verbose_name="Contenido")
    published = models.DateTimeField(verbose_name="Fecha de publicación",default=now)
    image = models.ImageField(verbose_name="Imagen", upload_to="blog",null=True, blank=True)
    author = models.ForeignKey(User,verbose_name="Autor",on_delete=models.CASCADE,null=True)
    service = models.ForeignKey(Service,verbose_name="Postear en",on_delete=models.CASCADE,null=True)
    created = models.DateTimeField(auto_now_add=True,verbose_name="Fecha de creación")
    updated = models.DateTimeField(auto_now=True,verbose_name="Fecha de edición")
 
    class Meta:
        verbose_name = "entrada"
        verbose_name_plural = "entradas"
        ordering = ["-created"]
        

    def __str__(self):
            return self.title        


class AlumnoPost(models.Model):
    title = models.CharField(max_length=200, verbose_name="Títlo")
    content = RichTextField(verbose_name="Contenido")
    published = models.DateTimeField(verbose_name="Fecha de publicación",default=now)
    author = models.ForeignKey(User,verbose_name="Autor",on_delete=models.CASCADE,null=True)
    service = models.ForeignKey(Service,verbose_name="Postear en",on_delete=models.CASCADE,null=True)
    created = models.DateTimeField(auto_now_add=True,verbose_name="Fecha de creación")
    updated = models.DateTimeField(auto_now=True,verbose_name="Fecha de edición")
        
    class Meta:
        verbose_name = "post"
        verbose_name_plural = "posts"
        ordering = ["-created"]
        

    def __str__(self):
            return self.title              


class Commentary(models.Model):    
    title = models.CharField(max_length=200, verbose_name="Títlo")
    content = RichTextField(verbose_name="Contenido")
    post = models.ForeignKey(AlumnoPost,verbose_name="Comentar post",on_delete=models.CASCADE,null=True)
    entry = models.ForeignKey(Entry,verbose_name="Comentar entrada",on_delete=models.CASCADE,null=True)
    service = models.ForeignKey(Service,verbose_name="Postear en",on_delete=models.CASCADE,null=True)
    author = models.ForeignKey(User,verbose_name="Autor",on_delete=models.CASCADE,null=True)
    published = models.DateTimeField(verbose_name="Fecha de publicación",default=now)
    created = models.DateTimeField(auto_now_add=True,verbose_name="Fecha de creación")
    updated = models.DateTimeField(auto_now=True,verbose_name="Fecha de edición")
        
    class Meta:
        verbose_name = "comentario"
        verbose_name_plural = "comentarios"
        ordering = ["-created"]
        

    def __str__(self):
            return self.title                    