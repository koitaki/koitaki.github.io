from django.db import models

# Create your models here.

# countries = (
#     'Australia',
#     'Canada',
#     'China',
#     'France',
#     'Germany',
#     'Japan',
#     'New Zealand',
#     'United Kingdom',
#     'United States',
# )


class Country(models.Model):
    name = models.CharField(null=False, blank=False, max_length=100)
    slug = models.SlugField(null=False, max_length=100)
    description = models.TextField(null=True)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Region(models.Model):
    name = models.CharField(null=False, blank=True, max_length=100)
    slug = models.SlugField(null=False, max_length=100)
    description = models.TextField(null=True)
    country = models.ForeignKey(Country, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Location(models.Model):
    name = models.CharField(null=False, blank=True, max_length=100)
    slug = models.SlugField(null=False, max_length=100)
    description = models.TextField(null=True)
    region = models.ForeignKey(Region, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class Resort(models.Model):
    name = models.CharField(null=False, max_length=100)
    slug = models.SlugField(null=False, max_length=100)
    description = models.TextField(null=True)
    longitude = models.DecimalField(max_digits=10, decimal_places=4, default=0.0000)
    latitude = models.DecimalField(max_digits=10, decimal_places=4, default=0.0000)
    location = models.ForeignKey(Location, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name


class ProspectiveUser(models.Model):
    name = models.CharField(null=False, blank=False, max_length=100)
    email = models.EmailField(unique=True, null=False, blank=False)
    ip_address = models.GenericIPAddressField(null=False)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    # country = models.CharField(max_length=20, choices=countries)

    def __str__(self):
        return self.email



