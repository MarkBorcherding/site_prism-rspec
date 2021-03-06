# The SitePrism namespace
module SitePrism
  # Our RSpec extension
  module RSpec
    # Our Matchers
    module Matchers
      # Match all the things
      class HaveAllTheThings
        attr_reader :actual

        def matches?(actual)
          @actual  = actual
          missing_items.length == 0
        end

        def failure_message
          "Unable to find all the things for #{actual.class}.\n  Could not find: #{missing_items.join ', '}"
        end

        def failure_message_when_negated
          "Didn't expected to find all the things for #{actual.class}."
        end

        protected

        def expected_items
          actual.class.mapped_items
        end

        def missing_items
          expected_items.reject { |element| actual.send "has_#{element}?" }
        end
      end

      def have_all_the_things
        HaveAllTheThings.new
      end
    end
  end
end
