require_relative "matchers"

module SitePrism
  module RSpec

    def self.initialize_configuration(config)
      config.include(SitePrism::RSpec::Matchers)
    end

    initialize_configuration ::RSpec.configuration
  end
end
