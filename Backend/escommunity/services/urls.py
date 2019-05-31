from django.urls import path
from . import views
urlpatterns = [
    path('',views.services,name="servicios"),
    path('aulas/',views.aulas,name="aulas"),
]