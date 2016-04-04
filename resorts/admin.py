from django.contrib import admin
from .models import Resort, Location, Area, Region, Country, Continent, WebCam, SkiSchool


@admin.register(Resort)
class ResortAdmin(admin.ModelAdmin):
    class Meta:
        model = Resort
        order = ('name',)
        list_display = ['name', 'slug', 'updated']
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
    list_display = ['name', 'slug', 'area', 'updated']
    class Meta:
        model = Location
        ordering = ('name',)


@admin.register(Area)
class AreaAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'region', 'updated']
    class Meta:
        model = Area
        ordering = ('name',)


@admin.register(Region)
class RegionAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'country', 'updated']
    class Meta:
        model = Region
        ordering = ('name',)


@admin.register(Country)
class CountryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'continent', 'updated']
    class Meta:
        model = Country
        ordering = ('name',)


@admin.register(Continent)
class ContinentAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'updated']
    class Meta:
        model = Continent
        ordering = ('name',)


@admin.register(WebCam)
class WebCamAdmin(admin.ModelAdmin):
    list_display = ['resort', 'name', 'weburl', 'updated']
    class Meta:
        model = WebCam
        ordering = ('resort',)


@admin.register(SkiSchool)
class SkiSchoolAdmin(admin.ModelAdmin):
    list_display = ['resort', 'name', 'slug', 'description', 'weburl', 'phone', 'email', 'updated']
    class Meta:
        model = SkiSchool
        ordering = ('resort',)

