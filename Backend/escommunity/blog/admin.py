from django.contrib import admin
from .models import *
# Register your models here.

class EntryAdmin(admin.ModelAdmin):
    readonly_fields=('created','updated') #Capos de solo lectura 
    list_display = ('title','author','published')


class PostAlumno(admin.ModelAdmin):
    readonly_fields=('created','updated') #Capos de solo lectura 
    list_display = ('title','author','published')

class CommentaryAlumno(admin.ModelAdmin):
    readonly_fields=('created','updated') #Capos de solo lectura 
    list_display = ('title','author','published')
    
admin.site.register(Entry, EntryAdmin)         
admin.site.register(Commentary, CommentaryAlumno)         
admin.site.register(AlumnoPost, PostAlumno) 