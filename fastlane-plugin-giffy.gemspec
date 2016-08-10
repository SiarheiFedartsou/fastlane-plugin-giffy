# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/giffy/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-giffy'
  spec.version       = Fastlane::Giffy::VERSION
  spec.author        = %q{SiarheiFiedartsou}
  spec.email         = %q{siarhei.fedartsou@gmail.com}

  spec.summary       = %q{giffy}
  spec.homepage      = "https://github.com/SiarheiFedartsou/fastlane-plugin-giffy"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.99.0'
end
