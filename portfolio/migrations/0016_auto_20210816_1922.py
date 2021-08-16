# Generated by Django 3.2.6 on 2021-08-16 19:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0015_delete_google'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='gallery',
            options={'ordering': ('order',)},
        ),
        migrations.AddField(
            model_name='gallery',
            name='date_created',
            field=models.CharField(default='??/????', help_text='String MM/YYYY if you know it', max_length=10),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='gallery',
            name='description',
            field=models.TextField(default='TK'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='gallery',
            name='order',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='gallery',
            name='portfolio_page',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='portfolio.portfoliopage'),
        ),
        migrations.AddField(
            model_name='gallery',
            name='title',
            field=models.CharField(default='TITLE', max_length=250),
            preserve_default=False,
        ),
    ]
