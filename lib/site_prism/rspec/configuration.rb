require_relative 'matchers'

# Namespace inside SitePrism
module SitePrism
  # Our RSpec extensions
  module RSpec
    def self.initialize_configuration(config)
      config.include(SitePrism::RSpec::Matchers)
    end

    initialize_configuration ::RSpec.configuration
  end
end
