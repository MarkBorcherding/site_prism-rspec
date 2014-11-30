# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'site_prism/rspec/version'

Gem::Specification.new do |spec|
  spec.name          = "site_prism-rspec"
  spec.version       = SitePrism::RSpec::VERSION
  spec.authors       = ["Mark Borcherding"]
  spec.email         = ["markborcherding@gmail.com"]
  spec.summary       = %q{A set of RSpec matchers for SitePrism with better than default error messages.}
  spec.description   = %q{A set of RSpec matchers for SitePrism with better than default error messages.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec"
  spec.add_dependency "site_prism"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'capybara-webkit'
end
