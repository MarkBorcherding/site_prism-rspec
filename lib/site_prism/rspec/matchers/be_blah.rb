module SitePrism
  module Rspec
    module Matchers
      class BeBlah < ::RSpec::Matchers::BuiltIn::BaseMatcher
        def matches?(actual)
          @actual  = actual
          missing_items.length == 0
        end

        def failure_message
          "Expected #{actual} to have #{expected_items}, but didn't find #{missing_items}."
        end

        protected

        def expected_items
          actual.class.mapped_items
        end

        def missing_items
          expected_items.reject { |element| actual.send "has_#{element}?" }
        end

        def actual
          @actual
        end

      end

      def be_blah(*args)
        BeBlah.new(args)
      end
    end
  end
end
