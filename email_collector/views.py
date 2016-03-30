from django.shortcuts import render
from email_collector.models import ProspectiveUser
from geo import google
from .forms import ProspectiveUserForm, SignupForm
from models import Resort

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

    # This is using regular Django Forms
    # form = ProspectiveUserForm(request.POST or None)
    # if form.is_valid():
    #     name = form.cleaned_data['name']
    #     email = form.cleaned_data['email']
    #     prospective_user, created = ProspectiveUser.objects.get_or_create(email=email, name=name)
    #     print('Prospective User: {}'.format(prospective_user, created))
    #     print('Was created: {}'.format(created))

    # This is using Model Forms
    form = SignupForm(request.POST or None)
    if form.is_valid():
        prospective_user = form.save(commit=False)
        prospective_user.ip_address = get_ip(request)

        # name = form.cleaned_data['name']
        # email = form.cleaned_data['email']
        # ip_address = get_ip(request)
        # prospective_user, created = ProspectiveUser.objects.get_or_create(email=email, name=name, ip_address=ip_address)
        prospective_user.save()

    resorts = Resort.objects.all()
    context = {'form': form, 'resort_list': resorts}
    return render(request, 'email_collector/index.html', context)

    # if request.method == 'GET':
    #     return render(request, 'email_collector/index.html')
    # if request.method == 'POST':
    #     form = ProspectiveUserForm(request.POST or None)
    #     context = {'form': form}

        # name = ProspectiveUser(name=request.POST['name'])
        # user = ProspectiveUser(email=request.POST['email'])
        # user.save()
        # return render(request, 'email_collector/index.html', {'email': user,'name': name })
        # return render(request, 'email_collector/index.html', context)


def get_resort(request, id):
    resort = Resort.objects.get(pk=id)
    return render(request, 'email_collector/perisher.html', {'resort': resort })


def map_url():
    long   = 13.106564
    lat    = 47.240813
    resort = 'perisher'
    return google.gMapURL(resort, long, lat)


