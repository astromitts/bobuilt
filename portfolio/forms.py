from django.forms import (
    Form,
    CharField,
    EmailInput,
)

from django_summernote.widgets import SummernoteWidget


class ContactForm(Form):
    email = CharField(
        widget=EmailInput(attrs={
            'class': 'form-control',
            'autocomplete': 'off',
        }),
        label='Your email address'
    )
    message = CharField(widget=SummernoteWidget())
