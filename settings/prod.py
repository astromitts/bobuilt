import os
from settings import *  # noqa
import dj_database_url

STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'
STATIC_ROOT = os.path.join(BASE_DIR, 'static')

SECRET_KEY = os.environ['PRODUCTION_KEY']
GOOGLE_RECAPTCHA_SECRET_KEY = os.environ['GOOGLE_RECAPTCHA_SECRET_KEY']
GOOGLE_RECAPTCHA_SITE_KEY = os.environ['GOOGLE_RECAPTCHA_SITE_KEY']

DATABASES['default'] = dj_database_url.config(conn_max_age=600)
DATABASES['default'] = dj_database_url.config(default=os.environ['DATABASE_URL'])

DEBUG = True
MIDDLEWARE_DEBUG = False

ALLOWED_HOSTS = ['bobuilt.herokuapp.com', 'bobuilt.herokuapp.com', 'www.bobuilt.me']

GOOGLE_DRIVE_STORAGE_JSON_KEY_FILE_CONTENTS = os.environ['GOOGLE_CREDENTIALS']
os['GOOGLE_DRIVE_STORAGE_JSON_KEY_FILE_CONTENTS'] = GOOGLE_DRIVE_STORAGE_JSON_KEY_FILE_CONTENTS
# asdf
