from django.contrib import admin
from .models import ProspectiveUser


@admin.register(ProspectiveUser)
class ProspectiveUserAdmin(admin.ModelAdmin):
    list_display = ['name', 'email', 'updated', 'timestamp']
    class Meta:
        model = ProspectiveUser
        ordering = ('email',)



