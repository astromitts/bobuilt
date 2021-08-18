from django.conf import settings
from django.contrib import messages
from django.http import HttpResponse
from django.template import loader
from django.shortcuts import redirect
from django.urls import reverse
from django.views import View
from portfolio.forms import ContactForm
from portfolio.models import PortfolioPage, Contact


def handle_contact(view, request):
    recaptcha_error = False
    if settings.GOOGLE_RECAPTCHA_SITE_KEY:
        if not request.POST.get('g-recaptcha-response'):
            recaptcha_error = True
    form = ContactForm(request.POST)

    if form.is_valid() and not recaptcha_error:
        contact = Contact(
            submitter_email=request.POST['email'],
            message=request.POST['message']
        )
        contact.save()
        messages.success(request, 'Thanks for your message, I will get back to you as soon as I can!')
        return redirect(reverse('home'))
    else:
        view.context.update({'form': form, 'recaptcha_error': recaptcha_error})
        if form.errors.get('message'):
            form.errors['message'] = ['Message is required', ]
        return HttpResponse(view.template.render(view.context, request))


class PortfolioBase(View):
    def setup(self, request, *args, **kwargs):
        super(PortfolioBase, self).setup(request, *args, **kwargs)
        if 'page_slug' in kwargs:
            self.portfolio_page = PortfolioPage.objects.get(pk=kwargs['page_slug'])


class PortfolioCategory(PortfolioBase):
    def get(self, request, *args, **kwargs):
        template = loader.get_template('portfolio_category.html')
        cols = [
            [],
            [],
            []
        ]
        galleries = self.portfolio_page.gallery_set.order_by('order').all()

        for i in range(0, len(galleries)):
            gallery = galleries[i]
            rail = i % 3
            cols[rail].append(gallery)

        context = {
            'category': self.portfolio_page,
            'page_title': self.portfolio_page.title,
            'galleries': cols
        }
        return HttpResponse(template.render(context, request))


class ContactView(View):
    def setup(self, request, *args, **kwargs):
        super(ContactView, self).setup(request, *args, **kwargs)
        self.template = loader.get_template('contact.html')
        self.context = {
            'site_key': settings.GOOGLE_RECAPTCHA_SITE_KEY,
            'recaptcha_error': False
        }

    def get(self, request, *args, **kwargs):
        self.context.update({'form': ContactForm()})
        return HttpResponse(self.template.render(self.context, request))

    def post(self, request, *args, **kwargs):
        return handle_contact(self, request)


class Home(View):
    def setup(self, request, *args, **kwargs):
        super(Home, self).setup(request, *args, **kwargs)
        self.template = loader.get_template('home.html')
        self.context = {
            'site_key': settings.GOOGLE_RECAPTCHA_SITE_KEY,
            'recaptcha_error': False
        }

    def get(self, request, *args, **kwargs):
        self.context.update({'form': ContactForm()})
        return HttpResponse(self.template.render(self.context, request))

    def post(self, request, *args, **kwargs):
        return handle_contact(self, request)
