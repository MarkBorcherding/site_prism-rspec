require_relative '../sections/ol'
require_relative '../sections/ul'

class TestPage < SitePrism::Page
  set_url '/test.html'
  set_url_matcher(/test\.html$/)

  section :ol, Ol, 'ol'
  section :ul, Ul, 'ul'
end
