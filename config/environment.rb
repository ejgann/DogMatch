require 'bundler/setup'
Bundler.require

require 'active_record'
require 'rake'
require 'rest_client'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite"
) 

ActiveRecord::Base.logger = nil

require_all 'app' 

# Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
# Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}