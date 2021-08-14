from django import forms
from django.contrib import admin

from portfolio.models import PortfolioPage, PortfolioItem
from django_summernote.admin import SummernoteModelAdmin


class PortfolioPageForm(forms.ModelForm):
    model = PortfolioPage
    fields = '__all__'


class PortfolioPageAdmin(SummernoteModelAdmin):
    form = PortfolioPageForm
    list_display = ['slug', 'title']
    summernote_fields = ('description')


class PortfolioItemForm(forms.ModelForm):
    model = PortfolioItem
    fields = '__all__'


class PortfolioItemAdmin(SummernoteModelAdmin):
    form = PortfolioItemForm
    list_display = ['title', 'portfolio_page']
    list_editable = ['portfolio_page']
    summernote_fields = ('description')


admin.site.register(PortfolioPage, PortfolioPageAdmin)
admin.site.register(PortfolioItem, PortfolioItemAdmin)
