from django.conf import settings
from django.http import HttpResponse
from django.template import loader
from django.views import View
from portfolio.forms import ContactForm
from portfolio.models import PortfolioPage


class PortfolioBase(View):
    def setup(self, request, *args, **kwargs):
        super(PortfolioBase, self).setup(request, *args, **kwargs)
        if 'page_slug' in kwargs:
            self.portfolio_page = PortfolioPage.objects.get(pk=kwargs['page_slug'])


class PortfolioCategory(PortfolioBase):
    def get(self, request, *args, **kwargs):
        template = loader.get_template('portfolio_category.html')
        context = {
            'category': self.portfolio_page,
            'page_title': self.portfolio_page.title
        }
        return HttpResponse(template.render(context, request))


class Contact(View):
    def setup(self, request, *args, **kwargs):
        super(Contact, self).setup(request, *args, **kwargs)
        self.template = loader.get_template('contact.html')
        self.context = {
            'site_key': settings.GOOGLE_RECAPTCHA_SITE_KEY
        }

    def get(self, request, *args, **kwargs):
        self.context.update({'form': ContactForm()})
        return HttpResponse(self.template.render(self.context, request))
