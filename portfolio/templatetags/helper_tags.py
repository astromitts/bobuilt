from django import template
from django.utils.safestring import mark_safe

register = template.Library()


@register.filter(name='pdb')
def pdb(item, item2=None):
    import pdb  # noqa
    pdb.set_trace()  # noqa


@register.filter(name='youtube_player')
def youtube_player(src):
    html = '''
    <iframe width="560" height="315"
    src="https://www.youtube.com/embed/{}?autoplay=1&loop=1&playlist={}"
    frameborder="0" allowfullscreen></iframe>

    '''
    return mark_safe(html.format(src, src))
