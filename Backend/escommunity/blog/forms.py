from django import forms

class postalumno(forms.Form):
    title = forms.CharField(label="Tiítulo",required=True, widget=forms.TextInput(
        attrs={'class':'form-control'}
    ))
    content = forms.CharField(label="¿Qué quieres publicar?",required=True, widget=forms.Textarea(
        attrs={'class':'form-control','rows':5}
    ))
