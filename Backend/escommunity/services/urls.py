from django.urls import path
from . import views
urlpatterns = [
    path('',views.services,name="servicios"),
    #path('modulo/',views.modulo,name="modulo"),
]