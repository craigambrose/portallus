ENV["RAILS_ENV"] = "test"
require File.dirname(__FILE__) + "/../config/environment"
require 'application'

require 'test/unit'
require 'mock'
require 'active_record/fixtures'
require 'action_controller/test_process'
require 'action_web_service/test_invoke'
require 'breakpoint'
require File.dirname(__FILE__) + '/mocks/development/find_manager'

def create_fixtures(*table_names)
  Fixtures.create_fixtures(File.dirname(__FILE__) + "/fixtures", table_names)
end

Test::Unit::TestCase.fixture_path = File.dirname(__FILE__) + "/fixtures/"




