# Generated by Django 3.2.6 on 2021-08-16 13:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0006_contact_responded_at'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='PortfolioGallery',
            new_name='PortfolioImage',
        ),
    ]
