# Generated by Django 3.2.6 on 2021-08-17 09:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0019_auto_20210817_0932'),
    ]

    operations = [
        migrations.AlterField(
            model_name='galleryimage',
            name='video',
            field=models.TextField(blank=True, null=True),
        ),
    ]