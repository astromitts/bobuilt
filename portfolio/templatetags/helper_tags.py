from django import template

register = template.Library()


@register.filter(name='pdb')
def pdb(item, item2=None):
    import pdb  # noqa
    pdb.set_trace()  # noqa
