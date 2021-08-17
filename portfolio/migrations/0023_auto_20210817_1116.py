# Generated by Django 3.2.6 on 2021-08-17 11:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0022_auto_20210817_1033'),
    ]

    operations = [
        migrations.CreateModel(
            name='PortfolioManager',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.AlterModelOptions(
            name='portfoliopage',
            options={'ordering': ('order',)},
        ),
        migrations.AddField(
            model_name='portfoliopage',
            name='order',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='portfoliopage',
            name='portfolio',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='portfolio.portfoliomanager'),
        ),
    ]