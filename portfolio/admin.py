from django import forms
from django.contrib import admin
from grappelli.forms import GrappelliSortableHiddenMixin

from portfolio.models import (
    Contact,
    Gallery,
    GalleryImage,
    PortfolioPage,
    PortfolioItem,
)

from django_summernote.admin import SummernoteModelAdmin


class ContactAdminForm(forms.ModelForm):
    model = Contact
    fields = '_all__'


@admin.register(Contact)
class ContactAdmin(SummernoteModelAdmin):
    form = ContactAdminForm
    list_display = ['submitter_email', 'submitted_at', 'message', 'responded']
    summernote_fields = ('message')
    readonly_fields = ['submitter_email', 'submitted_at', ]


class PortfolioPageForm(forms.ModelForm):
    model = PortfolioPage
    fields = '__all__'


@admin.register(PortfolioPage)
class PortfolioPageAdmin(SummernoteModelAdmin):
    form = PortfolioPageForm
    list_display = ['slug', 'title']
    summernote_fields = ('description')


class PortfolioItemForm(forms.ModelForm):
    model = PortfolioItem
    fields = '__all__'


@admin.register(PortfolioItem)
class PortfolioItemAdmin(SummernoteModelAdmin):
    form = PortfolioItemForm
    list_display = ['title']
    summernote_fields = ('description')


class GalleryImageInline(GrappelliSortableHiddenMixin, admin.StackedInline):
    model = GalleryImage
    sortable_field_name = 'order'
    extra = 0


class GalleryForm(forms.ModelForm):
    model = Gallery
    fields = '__all__'


@admin.register(Gallery)
class GalleryAdmin(admin.ModelAdmin):
    form = GalleryForm
    inlines = [GalleryImageInline, ]
    list_display = ['name', 'portfolio_item']
