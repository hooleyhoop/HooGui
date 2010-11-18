# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rake/testtask'

Rake::TestTask.new do |test|
  test.pattern = 'test/**/*_test.rb'
  test.libs << 'test'
end


begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.name = "gui"
    gem.summary = "hoo gui engine"
    gem.files = Dir["{lib}/**/*", "{app}/**/*", "{public}/**/*", "{config}/**/*"]
    # other fields that would normally go in your gemspec
    # like authors, email and has_rdoc can also be included here

    gem.authors = ["Your Name"]
	gem.description = "audioboo gui"
    gem.email = "you@email.com"
	gem.homepage = ""
  end
  Jeweler::GemcutterTasks.new
rescue
  puts "Jeweler or one of its dependencies is not installed."
end
