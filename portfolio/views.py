from django.http import HttpResponse
from django.template import loader
from django.views import View
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
