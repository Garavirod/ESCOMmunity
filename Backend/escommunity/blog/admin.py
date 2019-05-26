from django.contrib import admin
from .models import Entry
# Register your models here.

class EntryAdmin(admin.ModelAdmin):
    readonly_fields=('created','updated') #Capos de solo lectura 
    list_display = ('title','author','published')
    
admin.site.register(Entry, EntryAdmin) 