from django.contrib import admin
from django.urls import include, path
from django.views.generic import TemplateView
from portfolio.views import PortfolioCategory, Contact

urlpatterns = [
    path('grappelli/', include('grappelli.urls')),  # grappelli URLS
    path('summernote/', include('django_summernote.urls')),  # summernote URLS
    path('admin/', admin.site.urls),
    path('error/', TemplateView.as_view(template_name='error.html'), name='error'),
    path('', TemplateView.as_view(template_name='base.html'), name='home'),
    path('user/', include('appuser.urls')),
    path('contact/', Contact.as_view(), name='contact'),
    path('portfolio/<str:page_slug>/', PortfolioCategory.as_view(), name='portfolio_page')
]
