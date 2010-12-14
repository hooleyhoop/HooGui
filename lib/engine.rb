require "gui"
require "rails"
require 'action_controller'
require 'application_helper'

module Gui
	class Engine < Rails::Engine

		engine_name :gui

        # not sure if we want this
        isolate_namespace( Gui )

		# Config defaults
	    config.widget_factory_name = "default factory name"
    	config.mount_at = '/'

		# Load rake tasks
#		rake_tasks do
#			load File.join(File.dirname(__FILE__), 'rails/railties/tasks.rake')
#		end

        # Add a load path for this specific Engine
        # config.autoload_paths << File.expand_path("../lib/some/path", __FILE__)

    	# Check the gem config
    	initializer "check config" do |app|

      		# make sure mount_at ends with trailing slash
      		config.mount_at += '/'  unless config.mount_at.last == '/'
		end

		initializer "static assets" do |app|
     		app.middleware.use ::ActionDispatch::Static, "#{root}/public"
		end

        #if you like you can put controllers anywhere you like
        #paths["app/controllers"] = "lib/controllers"

        # simplify asset paths. ie inside engine  image_path(“foo.jpg“) #=> “/my_engine/images/foo.jpg“
        config.asset_path = "/my_engine/%s"

    end
end
