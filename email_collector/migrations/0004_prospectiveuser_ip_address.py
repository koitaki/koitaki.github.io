# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2016-03-28 12:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('email_collector', '0003_auto_20160328_1132'),
    ]

    operations = [
        migrations.AddField(
            model_name='prospectiveuser',
            name='ip_address',
            field=models.GenericIPAddressField(default='0.0.0.0'),
            preserve_default=False,
        ),
    ]
