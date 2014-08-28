lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rubygems'
require 'active_support'
require 'active_support/test_case'
require 'shoulda'
require 'matchy'
require 'mongo_mapper'
require 'models/widget'
require 'mongrations'
# require 'mongrations/exceptions'
# require 'mongrations/exceptions'
# require 'mongrations/exceptions'
# require 'mongrations/exceptions'
# require 'mongrations/exceptions'
# require 'mongrations/exceptions'
# require 'mongrations/migration_proxy'
# require 'mongrations/migrator'
# require 'mongrations/mongration'
# require 'mongrations/schema_migration'

MongoMapper.connection = Mongo::Connection.new('127.0.0.1', 27017)
MongoMapper.database   = "mongrations-test"

class ActiveSupport::TestCase
  def teardown
    MongoMapper.connection.drop_database "mongrations-test"
  end

  def inherited(base)
    base.define_method teardown do
      super
    end
  end
end
