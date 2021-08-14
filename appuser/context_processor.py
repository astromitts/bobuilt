from portfolio.models import PortfolioPage


def context_processor(request):
    portfolio_pages = PortfolioPage.objects.all()
    return {
        'PAGES': portfolio_pages
    }
