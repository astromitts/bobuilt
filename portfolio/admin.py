from django import forms
from django.contrib import admin
from grappelli.forms import GrappelliSortableHiddenMixin

from portfolio.models import PortfolioPage, PortfolioItem
from django_summernote.admin import SummernoteModelAdmin


class PortfolioItemInline(GrappelliSortableHiddenMixin, admin.StackedInline):
    model = PortfolioItem
    sortable_field_name = 'order'
    extra = 0


class PortfolioPageForm(forms.ModelForm):
    model = PortfolioPage
    fields = '__all__'


@admin.register(PortfolioPage)
class PortfolioPageAdmin(SummernoteModelAdmin):
    form = PortfolioPageForm
    list_display = ['slug', 'title']
    summernote_fields = ('description')
    inlines = (PortfolioItemInline, )


class PortfolioItemForm(forms.ModelForm):
    model = PortfolioItem
    fields = '__all__'


@admin.register(PortfolioItem)
class PortfolioItemAdmin(SummernoteModelAdmin):
    form = PortfolioItemForm
    list_display = ['title']
    summernote_fields = ('description')
