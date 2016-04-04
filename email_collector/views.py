from django.shortcuts import render
from email_collector.models import ProspectiveUser
from .forms import SignupForm
from resorts.models import Resort

# Create your views here.


def get_ip(request):
    try:
        ip = request.META.get('HTTP_X_FORWARDED_FOR')
        if ip:
            ip = ip.split(",")[0]
        else:
            ip = request.META.get("REMOTE_ADDR")
    except:
        ip = ''
    return ip


def handle_form(request):

    # This is using Model Forms
    form = SignupForm(request.POST or None)
    if form.is_valid():
        prospective_user = form.save(commit=False)
        prospective_user.ip_address = get_ip(request)
        prospective_user.save()

    resorts = Resort.objects.all()
    context = {'form': form, 'resort_list': resorts, 'devmode': True}
    return render(request, 'email_collector/index.html', context)


def get_resort(request, id):
    resort = Resort.objects.get(pk=id)
    return render(request, 'resorts/resort-page.html', {'resort': resort })



