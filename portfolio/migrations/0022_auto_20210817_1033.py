# Generated by Django 3.2.6 on 2021-08-17 10:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0021_alter_galleryimage_image'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='galleryimage',
            name='video',
        ),
        migrations.AddField(
            model_name='galleryimage',
            name='youtubeid',
            field=models.CharField(blank=True, max_length=30, null=True),
        ),
    ]