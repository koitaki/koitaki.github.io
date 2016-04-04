from django.contrib import admin
from .models import Resort, Location, Area, Region, Country, Continent


@admin.register(Resort)
class ResortAdmin(admin.ModelAdmin):
    class Meta:
        model = Resort
        order = ('name',)
        list_display = ['name', 'slug', 'updated', 'timestamp']
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
    list_display = ['name', 'slug', 'area', 'updated', 'timestamp']
    class Meta:
        model = Location
        ordering = ('name',)


@admin.register(Area)
class AreaAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'region', 'updated', 'timestamp']
    class Meta:
        model = Area
        ordering = ('name',)


@admin.register(Region)
class RegionAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'country', 'updated', 'timestamp']
    class Meta:
        model = Region
        ordering = ('name',)


@admin.register(Country)
class CountryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'continent', 'updated', 'timestamp']
    class Meta:
        model = Country
        ordering = ('name',)


@admin.register(Continent)
class ContinentAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'updated', 'timestamp']
    class Meta:
        model = Continent
        ordering = ('name',)

