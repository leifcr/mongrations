# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongrations/version'

Gem::Specification.new do |spec|
  spec.name          = "leifcr-mongrations"
  spec.version       = Mongrations::VERSION
  spec.authors       = ["jonbell", "Leif Ringstad"]
  spec.email         = ["leifcr@gmail.com"]
  spec.summary       = "Data migrating for MongoMapper"
  spec.description   = "Mongrations aims to be similar to ActiveRecord's data migrations, except\ninstead of worrying about schema changes, offering a way to change data when\nnecessary"
  spec.homepage      = "http://github.com/leifcr/mongrations"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "mongo_mapper", "~> 0.13.0"
  spec.add_runtime_dependency "activemodel", "~> 3.2.0"
  spec.add_runtime_dependency "activesupport", "~> 3.2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
