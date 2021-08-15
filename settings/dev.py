import os
from settings import *  # noqa

DEBUG = True

MIDDLEWARE_DEBUG = True

STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static'), ]

GOOGLE_RECAPTCHA_SECRET_KEY = None
GOOGLE_RECAPTCHA_SITE_KEY = None
