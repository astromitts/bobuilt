from django.db import models


class PortfolioPage(models.Model):
    slug = models.CharField(max_length=100, primary_key=True)
    title = models.CharField(max_length=100)
    description = models.TextField()


class PortfolioItem(models.Model):
    title = models.CharField(max_length=250)
    description = models.TextField()
    date_created = models.CharField(
        max_length=10,
        help_text='String MM/YYYY if you know it'
    )
    portfolio_page = models.ForeignKey(PortfolioPage, blank=True, null=True, on_delete=models.SET_NULL)
    image = models.ImageField()


class PortfolioGallery(models.Model):
    portfolio_item = models.ForeignKey(PortfolioItem, on_delete=models.CASCADE)
    image = models.ImageField()
