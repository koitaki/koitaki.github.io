# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2016-03-28 05:10
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('email_collector', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='prospectiveuser',
            old_name='email_address',
            new_name='email',
        ),
    ]