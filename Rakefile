require 'rubygems'
require 'rake'
require 'rake/testtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "leifcr-mongrations"
    gem.summary = %Q{Data migrating for MongoMapper}
    gem.description = %Q{Mongrations aims to be similar to ActiveRecord's data migrations, except
instead of worrying about schema changes, offering a way to change data when
necessary}
    gem.email = "leifcr@gmail.com"
    gem.homepage = "http://github.com/leifcr/mongrations"
    gem.authors = ["jonbell", "leifcr"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
