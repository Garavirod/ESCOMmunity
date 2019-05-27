from django.urls import path
from . import views


urlpatterns = [
    path('<section>/',views.Blog,name="blog"),
    path('<section>/create',views.PostCreate,name="create"), 
]