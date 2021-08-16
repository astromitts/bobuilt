from django.db import models
from django.utils.timezone import now
from datetime import datetime
from gdstorage.storage import GoogleDriveStorage

gd_storage = GoogleDriveStorage()


class Google(models.Model):
    credentials = models.FileField()


class PortfolioPage(models.Model):
    slug = models.CharField(max_length=100, primary_key=True)
    title = models.CharField(max_length=100)
    description = models.TextField()


class PortfolioItem(models.Model):
    title = models.CharField(max_length=250, unique=True)
    description = models.TextField()
    date_created = models.CharField(
        max_length=10,
        help_text='String MM/YYYY if you know it'
    )
    portfolio_page = models.ForeignKey(PortfolioPage, blank=True, null=True, on_delete=models.SET_NULL)
    order = models.IntegerField(default=0)

    class Meta:
        ordering = ('order', )

    def __str__(self):
        return self.title

    @property
    def gallery(self):
        return self.gallery_set.first()

    @property
    def display_date(self):
        if self.date_created.startswith('??'):
            return self.date_created[-4:]
        else:
            date_created_date = datetime.strptime(self.date_created, '%M/%Y')
            return date_created_date.strftime('%B %Y')


class Gallery(models.Model):
    name = models.CharField(max_length=150)
    portfolio_item = models.ForeignKey(PortfolioItem, blank=True, null=True, on_delete=models.SET_NULL)

    @property
    def thumbnail(self):
        tn = self.galleryimage_set.filter(is_thumbnail=True).first()
        if tn:
            return tn.image
        return None

    @property
    def images(self):
        return self.galleryimage_set.exclude(is_thumbnail=True).order_by('order').all()


class GalleryImage(models.Model):
    gallery = models.ForeignKey(Gallery, blank=True, null=True, on_delete=models.SET_NULL)
    image = models.ImageField(
        storage=gd_storage
    )
    is_primary = models.BooleanField(default=False)
    is_thumbnail = models.BooleanField(default=False)
    order = models.IntegerField(default=0)

    class Meta:
        ordering = ('order', )


class Contact(models.Model):
    submitter_email = models.TextField()
    message = models.TextField()
    submitted_at = models.DateTimeField(default=now)
    responded_at = models.DateTimeField(blank=True, null=True)

    @property
    def responded(self):
        return self.responded_at is not None
