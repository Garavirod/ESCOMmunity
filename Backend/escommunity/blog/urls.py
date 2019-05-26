from django.urls import path
from . import views

urlpatterns = [
    path('<section>/',views.Blog,name="blog"),
]