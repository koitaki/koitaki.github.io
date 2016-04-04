from django.shortcuts import render
from .models import Resort
from geo import google


# Create your views here.
def get_resort(request, slug):
    resort = Resort.objects.get(slug=slug)
    context = {'resort': resort, 'devmode': True }
    return render(request, 'resorts/resort-page.html', context)

