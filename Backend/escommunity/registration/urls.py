from django.urls import path
from .views import signUp

urlpatterns = [
    path('signup/',signUp.as_view(),name="signup"),
]

