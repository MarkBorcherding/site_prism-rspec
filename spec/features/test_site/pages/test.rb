require_relative '../sections/section_with_things'

# An example page to exercise our tests
class TestPage < SitePrism::Page
  set_url '/test.html'
  set_url_matcher(/test\.html$/)

  section :section_with_missing_things, SectionWithThings, '.missing-things'
  section :section_with_all_the_things, SectionWithThings, '.with-all-the-things'
  section :section_with_none_of_the_things, SectionWithThings, '.with-none-of-the-things'
end
