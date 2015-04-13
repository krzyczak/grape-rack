$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'boot'

Bundler.require :default, ENV['RACK_ENV']

Dir[File.expand_path('../../api/**/*.rb', __FILE__)].each do |f|
  file_loaded = require f
  puts "Loading #{f} ".ljust(70, '.') + " [ \e[32m#{file_loaded.to_s.upcase}\e[0m ]"
end

require 'api'
require 'transcoder_app'
