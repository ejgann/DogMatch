require 'bundler/setup'
Bundler.require

require 'active_record'
require 'rake'
require 'rest_client'

# Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
# Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}