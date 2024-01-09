# Rubocop::Trailblazer

`Rubocop::Trailblazer` is a Ruby gem that provides additional RuboCop rules that are specifically useful for enforcing best practices and coding styles within projects using the [Trailblazer](http://trailblazer.to/) architecture.

## Installation

Install `rubocop-trailblazer` gem via the following command:

```sh
$ gem install rubocop-trailblazer
```

If you are using this gem within a project, add the following line in your `Gemfile` or `gems.rb` under the development and test groups:
```ruby
group :development, :test do 
  gem 'rubocop-trailblazer', require: false 
end
```
Then run `bundle install` to install the gem.

## Usage

Instruct RuboCop to load the `Rubocop::Trailblazer` extension. Specify this in your `.rubocop.yml`:
```yaml 
require:
  rubocop-other-extension
  rubocop-trailblazer
```

Alternatively, you can specify this in the command line:
```sh
$ rubocop --require rubocop-trailblazer
```

Or in a Rake task:
```ruby
require 'rubocop/rake_task'

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-trailblazer'
end
```

## Contributing

We welcome contributions! For bug reports, feature requests, and pull requests, please feel free to visit our GitHub at https://github.com/seuros/rubocop-trailblazer.

When submitting a pull request, please ensure your changes are on a separate branch specific to the feature or issue. All updates should include tests.

## License

This gem is open-source, available under the terms of the [MIT License](https://opensource.org/licenses/MIT).
