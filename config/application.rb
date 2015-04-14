$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'boot'

Bundler.require :default, ENV['RACK_ENV']

files_to_load = Dir[File.expand_path('../../api/**/*.rb', __FILE__)]
files_to_load += Dir[File.expand_path('../../lib/**/*.rb', __FILE__)]

files_to_load.each do |f|
  require f
  puts "Loading #{f} ".ljust(80, '.') + " [ \e[32mLOADED\e[0m ]"
end

require 'api'
require 'transcoder_app'
