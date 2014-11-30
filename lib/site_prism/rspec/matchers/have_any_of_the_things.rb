module SitePrism
  module RSpec
    module Matchers
      class HaveAnyOfTheThings
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

        def actual
          @actual
        end
      end

      def have_any_of_the_things
        HaveAnyOfTheThings.new
      end
    end
  end
end
