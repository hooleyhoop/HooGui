# Tesed with ruby-1.8.7-p302 [ x86_64 ]

source "http://rubygems.org"

gem 'rails', '3.0.3'
gem 'mongrel', '1.2.0.pre2'
gem 'jquery-rails'

# Testing
gem "database_cleaner"
gem "capybara"
#gem "envjs"
#gem "launchy" # for save_and_open_page debugging

# Fake Rails app in fixture_rails_root
gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'haml'

group :development do
	gem 'webrat', '0.7.2'
	gem 'annotate-models', '1.0.4'
	gem 'faker'
end

group :test do
	gem 'spork', '0.8.4'
	gem 'factory_girl_rails'
end

group :development, :test do
	gem "rspec-rails", ">= 2.2.0"
end