require_relative 'pages/test'

# An example site to exercise under test
class TestSite
  def home
    TestPage.new
  end
end
