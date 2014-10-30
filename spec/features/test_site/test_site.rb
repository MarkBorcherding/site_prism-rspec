require_relative 'pages/test'

class TestSite
  def home
    TestPage.new
  end
end
