source 'https://rubygems.org'
ruby '2.2.2'

gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'
gem 'rack-cors'

group :development, :test do
  gem 'pry'
end

group :development do
  gem 'guard-bundler'
  gem 'guard-rack'
  gem 'rake'

  # Code quality tools
  gem 'cane', require: false
  gem 'puppet-lint', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'rack-test'
  gem 'rspec'
end
