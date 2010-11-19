$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Gui
	require 'engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
	require 'acts_as_widget/base'
end
