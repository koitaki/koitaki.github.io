from django.contrib import admin
from .models import ProspectiveUser, Resort, Location, Region, Country, Continent


@admin.register(ProspectiveUser)
class ProspectiveUserAdmin(admin.ModelAdmin):
    list_display = ['name', 'email', 'updated', 'timestamp']
    class Meta:
        model = ProspectiveUser
        ordering = ('email',)


@admin.register(Resort)
class ResortAdmin(admin.ModelAdmin):
    class Meta:
        model = Resort
        ordering = ('name')
        list_display = ['name', 'slug', 'location', 'updated', 'timestamp']
        fields = ['name',
                'slug',
                'main_picture',
                'thumbnail_picture',
                'base_height',
                'summit_height',
                'lowest_lifted_point',
                'highest_lifted_point',
                'lifts_number',
                'halfpipes',
                'terrain_parks',
                'season_open',
                'season_close',
                'location',
                'updated',
                'timestamp'
                ]


@admin.register(Location)
class LocationAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'region', 'updated', 'timestamp']
    class Meta:
        model = Location
        ordering = ('name',)


@admin.register(Region)
class RegionAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'country', 'updated', 'timestamp']
    class Meta:
        model = Region
        ordering = ('name',)

@admin.register(Country)
class CountryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'updated', 'timestamp']
    class Meta:
        model = Country
        ordering = ('name',)


@admin.register(Continent)
class ContinentAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'updated', 'timestamp']
    class Meta:
        model = Continent
        ordering = ('name',)


# Register your models here.
# admin.site.register(ProspectiveUser, ProspectiveUserAdmin)
# admin.site.register(Resort, ResortAdmin)
# admin.site.register(Location, LocationAdmin)
# admin.site.register(Region, RegionAdmin)
# admin.site.register(Country, CountryAdmin)

