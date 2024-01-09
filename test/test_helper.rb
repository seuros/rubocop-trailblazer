# frozen_string_literal: true

require 'rubocop-trailblazer'

require 'rubocop/minitest/assert_offense'

require 'minitest/autorun'
require 'minitest/proveit'

module RuboCop
  class CopTestCase < ::Minitest::Test
    include RuboCop::Minitest::AssertOffense
    prove_it!
  end
end
