from django.contrib import admin
from .models import ProspectiveUser, Resort, Location, Region, Country


class ProspectiveUserAdmin(admin.ModelAdmin):
    list_display = ['name', 'email', 'updated', 'timestamp']
    class Meta:
        model = ProspectiveUser


class ResortAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'location', 'updated', 'timestamp']
    class Meta:
        model = Resort


class LocationAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'region', 'updated', 'timestamp']
    class Meta:
        model = Location


class RegionAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'country', 'updated', 'timestamp']
    class Meta:
        model = Region


class CountryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'updated', 'timestamp']
    class Meta:
        model = Country



# Register your models here.
admin.site.register(ProspectiveUser, ProspectiveUserAdmin)
admin.site.register(Resort, ResortAdmin)
admin.site.register(Location, LocationAdmin)
admin.site.register(Region, RegionAdmin)
admin.site.register(Country, CountryAdmin)

