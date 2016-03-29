from django import forms
from .models import ProspectiveUser


class ProspectiveUserForm(forms.Form):
    name = forms.CharField(required=True)
    email = forms.EmailField(required=True)


class SignupForm(forms.ModelForm):
    class Meta:
        model = ProspectiveUser
        fields = ['name', 'email'] #, 'ip_address']
