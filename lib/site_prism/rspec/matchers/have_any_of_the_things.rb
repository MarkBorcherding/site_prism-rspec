# The SitePrism namespace
module SitePrism
  # Our RSpec extension
  module RSpec
    # Our matchers
    module Matchers
      # See if a page has any of the listed elements
      class HaveAnyOfTheThings
        attr_reader :actual

        def matches?(actual)
          @actual  = actual
          found_items.any?
        end

        def failure_message
          "Expected to find at least part of #{actual.class}."
        end

        def failure_message_when_negated
          "Didn't expect to find any of #{actual.class}.\n  Found: #{found_items.join(', ')}"
        end

        protected

        def expected_items
          actual.class.mapped_items
        end

        def found_items
          expected_items.select { |element| actual.send "has_#{element}?" }
        end
      end

      def have_any_of_the_things
        HaveAnyOfTheThings.new
      end
    end
  end
end
