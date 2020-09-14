
from mako.lookup import TemplateLookup
from mako.template import Template


mylookup = TemplateLookup(directories=['.'])
mytemplate = Template(filename='main.mako', lookup=mylookup)
print(mytemplate.render())
