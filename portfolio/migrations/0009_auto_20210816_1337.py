# Generated by Django 3.2.6 on 2021-08-16 13:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0008_auto_20210816_1336'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='galleryimage',
            options={'ordering': ('order',)},
        ),
        migrations.AddField(
            model_name='galleryimage',
            name='order',
            field=models.IntegerField(default=0),
        ),
    ]
