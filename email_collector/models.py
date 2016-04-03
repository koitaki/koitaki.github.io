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


class Location(models.Model):
    name = models.CharField(max_length=100)
    sub_location = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True, null=True)
    region = models.ForeignKey(Region, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Resort(models.Model):
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100)
    description = models.TextField(blank=True, null=True)
    thumbnail_picture = models.CharField(max_length=100, blank=True, null=True)
    main_picture = models.CharField(max_length=100, blank=True, null=True)
    highest_lifted_point = models.IntegerField(null=True)
    lowest_lifted_point = models.IntegerField(null=True)
    base_height = models.IntegerField(null=True)
    summit_height = models.IntegerField(null=True)
    lifts_number = models.IntegerField(null=True)
    season_open = models.DateField(null=True)
    season_close = models.DateField(null=True)
    halfpipes = models.IntegerField(null=True)
    terrain_parks = models.IntegerField(null=True)
    longitude = models.DecimalField(max_digits=10, decimal_places=5, default=0.00000)
    latitude = models.DecimalField(max_digits=10, decimal_places=5, default=0.00000)
    location = models.ForeignKey(Location, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def google_url(self):
        return google.MapURL(resort=self.name, longitude=self.longitude, latitude=self.latitude)

    def embed_url(self):
        return google.EmbedURL(resort=self.name, longitude=self.longitude, latitude=self.latitude)

    def boundary_box(self):
        pass

    def osm_embed_url(self):
        #for openstreetmap embed url
        scale_miles = 1
        bb = openstreetmap.get_bounding_box(self.latitude, self.longitude, scale_miles)
        osm_embed_url= "http://www.openstreetmap.org/export/embed.html?bbox="
        osm_embed_url = osm_embed_url + bb + "layer=mapnik"
        return osm_embed_url

    def osm_url(self):
        #for openstreetmap url
        osm_url = "http://www.openstreetmap.org/#map=17/"
        osm_url = osm_url + str(self.latitude) + "/" + str(self.longitude)
        return osm_url

    def __str__(self):
        return self.name


class ProspectiveUser(models.Model):
    name = models.CharField(blank=False, max_length=100)
    email = models.EmailField(unique=True, blank=False)
    ip_address = models.GenericIPAddressField(null=False)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.email


