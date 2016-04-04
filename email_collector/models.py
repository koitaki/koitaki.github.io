from django.db import models
from geo import google, openstreetmap

class ProspectiveUser(models.Model):
    name = models.CharField(blank=False, max_length=100)
    email = models.EmailField(unique=True, blank=False)
    ip_address = models.GenericIPAddressField(null=False)
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.email


