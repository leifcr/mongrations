require 'rake'
require "bundler/gem_tasks"

require 'rake/testtask'
# require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the mongrations plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

# desc 'Generate documentation for the mongrations plugin.'
# Rake::RDocTask.new(:rdoc) do |rdoc|
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title    = 'Mongrations'
#   rdoc.options << '--line-numbers' << '--inline-source'
#   rdoc.rdoc_files.include('README')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end