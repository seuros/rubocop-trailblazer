# frozen_string_literal: true

module RuboCop
  module Cop
    module Minitest
      # Checks for `assert_equal` method calls where the actual
      # argument is a variable and the expected argument is a literal.
      #
      # @example
      #   # bad
      #   assert_equal 3, my_var
      #
      #   # good
      #   assert_equal my_var, 3
      class VariableAsActualArgument < LiteralAsActualArgument
        MSG = 'Replace the literal with the second argument.'

        def on_send(node)
          return unless node.method?(:assert_equal)

          actual, expected, _message = *node.arguments
          return unless actual&.recursive_basic_literal?
          return if expected.recursive_basic_literal?

          add_offense(all_arguments_range(node)) do |corrector|
            autocorrect(corrector, node, expected, actual)
          end
        end
      end
    end
  end
end
