# frozen_string_literal: true

require 'rubocop'
require 'rubocop-minitest'

require_relative 'rubocop/trailblazer'
require_relative 'rubocop/trailblazer/version'
require_relative 'rubocop/trailblazer/inject'

RuboCop::Trailblazer::Inject.defaults!

require_relative 'rubocop/cop/trailblazer_cops'
