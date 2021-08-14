from django.conf import settings
from django.shortcuts import render, redirect
from django.urls import resolve
from django.urls.exceptions import Resolver404


def session_request_validation(get_response):
    """ Handler for catching unauthenticated requests to authentication
        protected views and returning an error page instead of DEBUG page

        Primarily exists because Heroku has a real hard time with DEBUG=False
    """

    def middleware(request):
        error_message = None
        status_code = 200

        if 'herokuapp.com' in request.get_host() and hasattr(settings, 'REDIRECT_TO'):
            return redirect('{}{}'.format(settings.REDIRECT_TO, request.path))

        user_is_authenticated = request.user.is_authenticated
        try:
            resolve(request.path)
        except Resolver404:
            if not user_is_authenticated:
                error_message = 'Page not found.'
                status_code = 404

        response = get_response(request)
        status_code = str(response.status_code)

        if response.status_code == 404:
            error_message = 'Page not found.'
        elif status_code.startswith('5') or status_code.startswith('4'):
            error_message = 'An unknown error occurred.'

        if error_message and not user_is_authenticated:
            status_code = response.status_code
            context = {
                'error_message': error_message,
                'status_code': status_code
            }
            return render(
                request,
                settings.DEFAULT_ERROR_VIEW,
                context=context,
                status=status_code
            )

        return response

    return middleware
