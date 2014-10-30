require 'capybara'
require 'capybara-webkit'
require 'capybara/dsl'
require 'capybara/rspec'
require 'site_prism'

require_relative '../lib/site_prism/rspec'

require_relative 'features/test_site/test_site'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

Capybara.configure do |config|
  config.default_driver = :webkit
  config.run_server = false
  config.default_selector = :css
  config.default_wait_time = 5
  config.app_host = 'file://' + File.dirname(__FILE__) + '/features/test_site/html'

  # capybara 2.1 config options
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
end
