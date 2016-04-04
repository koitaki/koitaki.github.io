from django.shortcuts import render
from .models import Resort, WebCam
from geo import google


# Create your views here.
def get_resort(request, slug):
    resort = Resort.objects.get(slug=slug)
    webcams = WebCam.objects.filter(resort=resort.id)
    context = {'resort': resort, 'webcams': webcams, 'devmode': True }
    return render(request, 'resorts/resort-page.html', context)

