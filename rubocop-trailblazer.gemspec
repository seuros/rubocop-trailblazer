# frozen_string_literal: true

require_relative 'lib/rubocop/trailblazer/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-trailblazer'
  spec.version = RuboCop::Trailblazer::VERSION
  spec.authors = ['Abdelkader Boudih']
  spec.email = ['terminale@gmail.com']

  spec.summary = 'Trailblazer Style Guide for RuboCop'
  spec.description = 'Trailblazer Style Guide for RuboCop'
  spec.homepage = 'https://github.com/seuros/rubocop-trailblazer'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/seuros/rubocop-trailblazer'
  spec.metadata['changelog_uri'] = 'https://github.com/seuros/rubocop-trailblazer/blob/master/CHANGELOG.md'

  spec.files = Dir.glob('{lib,config}/**/*', File::FNM_DOTMATCH)
  spec.require_paths = ['lib']

  spec.metadata['rubygems_mfa_required'] = 'true'
  spec.add_runtime_dependency 'rubocop', '>= 1.39', '< 2.0'
  spec.add_runtime_dependency 'rubocop-minitest', '>= 0.3.0', '< 1.0'
end
