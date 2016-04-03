from django import forms
from django.forms import ModelForm
from .models import ProspectiveUser
from django.utils.translation import ugettext_lazy as _


class SignupForm(ModelForm):
    class Meta:
        model = ProspectiveUser
        fields = ('name', 'email')
        labels = {
            'name': _('Name'),
            'email': _('Email'),
        }
        widgets = {
            'name': forms.TextInput(attrs={'placeholder': 'Your Name'}),
            'email': forms.TextInput(attrs={'placeholder': 'Eg. jane@domain.com'}),
        }
        error_messages = {
            'name': {
                'max_length': _("The name is too long."),
            },
        }

