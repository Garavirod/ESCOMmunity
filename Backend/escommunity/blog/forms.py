from django import forms

class postalumno(forms.Form):
    title = forms.CharField(label="Tiítulo",required=True, widget=forms.TextInput(
        attrs={'class':'form-control'}
    ))
    content = forms.CharField(label="¿Qué quieres publicar?",required=True, widget=forms.Textarea(
        attrs={'class':'form-control','rows':5}
    ))


class registroalumno(forms.Form):
    boleta = forms.CharField(label="N° boleta",required=True, widget=forms.TextInput(
        attrs={'class':'form-control','placeholder':'N° boleta'}
    ))

    name = forms.CharField(label="Nombre",required=True, widget=forms.TextInput(
        attrs={'class':'form-control','placeholder':'Nombre'}
    ))

    lname = forms.CharField(label="Apellidos",required=True, widget=forms.TextInput(
        attrs={'class':'form-control','placeholder':'Apellidos'}
    ))

    password1 = forms.CharField(required=True, widget=forms.PasswordInput(
        attrs={'class':'form-control','placeholder':'password'}
    ))

    correo = forms.CharField(required=True, widget=forms.EmailInput(
        attrs={'class':'form-control','placeholder':'Email'}
    ))

class resetPassword(forms.Form):
    
    password1 = forms.CharField(required=True, widget=forms.PasswordInput(
        attrs={'class':'form-control mb-3','placeholder':'Contraseña actual'}
    ))

    password2 = forms.CharField(required=True, widget=forms.PasswordInput(
        attrs={'class':'form-control','placeholder':'Nueva conraseña'}
    ))

    correo = forms.CharField(required=True, widget=forms.EmailInput(
        attrs={'class':'form-control','placeholder':'Email'}
    ))