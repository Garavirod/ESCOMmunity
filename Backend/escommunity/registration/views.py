from django.contrib.auth.forms import UserCreationForm
from django.views.generic import CreateView
from django.urls  import reverse_lazy
from django import forms
from django.contrib.auth.models import Group
# Create your views here.

class signUp(CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy('password_reset_complete')
    template_name = "registration/signup.html"

    def get_form(self, form_class=None):
        form =  super(signUp,self).get_form()
        form.fields["username"].widget = forms.TextInput(attrs={'class':'form-control mb-2','placeholder':'N° Boleta'})
        form.fields["password1"].widget = forms.PasswordInput(attrs={'class':'form-control mb-2','placeholder':'Password'})
        form.fields["password2"].widget = forms.PasswordInput(attrs={'class':'form-control mb-2','placeholder':'Confirma password'})        
        return form

