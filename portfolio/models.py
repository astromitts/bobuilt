from django.db import models
from django.utils.timezone import now
from datetime import datetime


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
    image = models.ImageField()
    portfolio_page = models.ForeignKey(PortfolioPage, blank=True, null=True, on_delete=models.SET_NULL)
    order = models.IntegerField(default=0)

    class Meta:
        ordering = ('order', )

    @property
    def display_date(self):
        if self.date_created.startswith('??'):
            return self.date_created[-4:]
        else:
            date_created_date = datetime.strptime(self.date_created, '%M/%Y')
            return date_created_date.strftime('%B %Y')


class PortfolioGallery(models.Model):
    portfolio_item = models.ForeignKey(PortfolioItem, on_delete=models.CASCADE)
    image = models.ImageField()


class Contact(models.Model):
    submitter_email = models.TextField()
    message = models.TextField()
    submitted_at = models.DateTimeField(default=now)
    responded_at = models.DateTimeField(blank=True, null=True)

    @property
    def responded(self):
        return self.responded_at is not None
