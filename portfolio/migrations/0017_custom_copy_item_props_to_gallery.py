# Generated by Django 3.2.6 on 2021-08-16 19:22

from django.db import migrations
from portfolio.models import Gallery


def forwards(apps, schema_editor):
    for gallery in Gallery.objects.all():
        gallery.title = gallery.portfolio_item.title
        gallery.description = gallery.portfolio_item.description
        gallery.date_created = gallery.portfolio_item.date_created
        gallery.portfolio_page = gallery.portfolio_item.portfolio_page
        gallery.save()


def reverse(apps, schema_editor):
    pass


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0016_auto_20210816_1922'),
    ]

    operations = [
        migrations.RunPython(forwards, reverse),
    ]