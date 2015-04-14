ENV['RACK_ENV'] ||= 'test'

require 'rubygems'
require 'rack/test'
require File.expand_path('../../config/environment', __FILE__)
Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.disable_monkey_patching!
end
