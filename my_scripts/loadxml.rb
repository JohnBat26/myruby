require "xmlsimple"


def load_dc
  data = XmlSimple.xml_in('dc.xml')
end

def load_fonts
  data = XmlSimple.xml_in('fonts.xml')
end
