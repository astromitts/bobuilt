from django.db import models
from django.utils.timezone import now
from datetime import datetime
from gdstorage.storage import GoogleDriveStorage

gd_storage = GoogleDriveStorage()


class PortfolioManager(models.Model):
    pass


class PortfolioPage(models.Model):
    slug = models.CharField(max_length=100, primary_key=True)
    title = models.CharField(max_length=100)
    description = models.TextField()
    order = models.IntegerField(default=0)
    portfolio = models.ForeignKey(PortfolioManager, blank=True, null=True, on_delete=models.SET_NULL)

    class Meta:
        ordering = ('order', )


class Gallery(models.Model):
    name = models.CharField(max_length=150)
    title = models.CharField(max_length=250)
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

    @property
    def has_video(self):
        return self.galleryimage_set.filter(youtubeid__isnull=False).count() > 0

    @property
    def images(self):
        return self.galleryimage_set.exclude(is_thumbnail=True).order_by('order').all()


class GalleryImage(models.Model):
    gallery = models.ForeignKey(Gallery, blank=True, null=True, on_delete=models.SET_NULL)
    image = models.ImageField(
        storage=gd_storage,
        blank=True,
        default='https://drive.google.com/file/d/1QNxRZbReZ1X9-97N9liZfIhgMf3rc0FD/view?usp=sharing'
    )
    youtubeid = models.CharField(max_length=30, blank=True, null=True)
    order = models.IntegerField(default=0)
    alt = models.CharField(max_length=250, default='Portfolio Image')
    description = models.TextField(blank=True, null=True)

    class Meta:
        ordering = ('order', )

    @property
    def type(self):
        if self.video:
            return 'video'
        return 'image'


class Contact(models.Model):
    submitter_email = models.TextField()
    message = models.TextField()
    submitted_at = models.DateTimeField(default=now)
    responded_at = models.DateTimeField(blank=True, null=True)

    @property
    def responded(self):
        return self.responded_at is not None
