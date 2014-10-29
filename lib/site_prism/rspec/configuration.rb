require_relative "matchers"

module SitePrism
  module Rspec

    def self.initialize_configuration(config)
      config.include(SitePrism::Rspec::Matchers)
    end

    initialize_configuration ::RSpec.configuration
  end
end
