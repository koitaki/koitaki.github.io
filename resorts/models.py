from django.db import models
from geo import google, openstreetmap


class Continent(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True, null=True)
    included = models.BooleanField()
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Country(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True, null=True)
    cc_fips = models.CharField(max_length=2, blank=True, null=True)
    cc_iso = models.CharField(max_length=2, blank=True, null=True)
    tld = models.CharField(max_length=4, blank=True, null=True)
    continent = models.ForeignKey(Continent, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Region(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True, null=True)
    country = models.ForeignKey(Country, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Area(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True, null=True)
    region = models.ForeignKey(Region, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Location(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True, null=True)
    area = models.ForeignKey(Area, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Resort(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True)
    thumbnail_picture = models.CharField(max_length=100, null=True, blank=True)
    main_picture = models.CharField(max_length=100, null=True, blank=True)
    website = models.URLField(max_length=200, null=True, blank=True)
    highest_lifted_point = models.IntegerField(null=True, blank=True)
    lowest_lifted_point = models.IntegerField(null=True, blank=True)
    village_height = models.IntegerField(null=True, blank=True)
    base_height = models.IntegerField(null=True, blank=True)
    summit_height = models.IntegerField(null=True, blank=True)
    terrain_size = models.IntegerField(null=True, blank=True)
    lifts_number = models.IntegerField(null=True, blank=True)
    season_open = models.DateField(null=True, blank=True)
    season_close = models.DateField(null=True, blank=True)
    halfpipes = models.IntegerField(null=True, blank=True)
    terrain_parks = models.IntegerField(null=True, blank=True)
    longitude = models.DecimalField(max_digits=10, decimal_places=6, default=0)
    latitude = models.DecimalField(max_digits=10, decimal_places=6, default=0)
    location = models.ForeignKey(Location, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name

    def google_url(self):
        return google.MapURL(resort=self.name, longitude=self.longitude, latitude=self.latitude)

    def embed_url(self):
        return google.EmbedURL(resort=self.name, longitude=self.longitude, latitude=self.latitude)

    def osm_embed_url(self):
        scale_miles = 1
        bb = openstreetmap.get_bounding_box(self.latitude, self.longitude, scale_miles)
        osm_embed_url= "http://www.openstreetmap.org/export/embed.html?bbox="
        osm_embed_url = osm_embed_url + bb + "layer=mapnik"
        return osm_embed_url

    def osm_url(self):
        osm_url = "http://www.openstreetmap.org/#map=17/"
        osm_url = osm_url + str(self.latitude) + "/" + str(self.longitude)
        return osm_url


class WebCam(models.Model):
    resort = models.ForeignKey(Resort, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    weburl = models.URLField(max_length=200, null=True, blank=True)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.weburl

class SkiSchool(models.Model):
    resort = models.ForeignKey(Resort, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True)
    weburl = models.URLField(max_length=200, null=True, blank=True)
    phone = models.CharField(max_length = 15, blank=True)
    email = models.EmailField(unique=True, null=True, blank=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name
