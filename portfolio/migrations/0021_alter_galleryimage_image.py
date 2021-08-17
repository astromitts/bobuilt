# Generated by Django 3.2.6 on 2021-08-17 09:56

from django.db import migrations, models
import gdstorage.storage


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0020_alter_galleryimage_video'),
    ]

    operations = [
        migrations.AlterField(
            model_name='galleryimage',
            name='image',
            field=models.ImageField(blank=True, default='https://drive.google.com/file/d/1QNxRZbReZ1X9-97N9liZfIhgMf3rc0FD/view?usp=sharing', storage=gdstorage.storage.GoogleDriveStorage(), upload_to=''),
        ),
    ]
