# This file is copied to spec/ when you run 'rails generate rspec:install'

RAILS_ENV = "test"

require 'rubygems'

#require File.expand_path("../../config/environment", __FILE__)
envoFile = File.expand_path(File.dirname(__FILE__) + "/../fixture_rails_root/config/environment.rb")
raise "steve, yes you steve, ERROR Cannot find enviro file!" unless File.exists?(envoFile)
require envoFile

require 'rspec'
require 'rspec/rails'

#dobbie require 'yaml'
#dobbie require 'active_record'
#dobbie require 'active_model'

#dobbie require 'mysql'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
#Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

#dobbie $: << File.expand_path(File.dirname(__FILE__) + '/../lib/')
#dobbie require 'gui'

RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
	config.mock_with :rspec

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
	config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
	config.use_transactional_fixtures = true
end
