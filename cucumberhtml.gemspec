# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'cucumberhtml/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'cucumberhtml'
  s.version     = Cucumberhtml::VERSION
  s.authors     = ['Erik Axel Nielsen']
  s.email       = ['erikaxel@lucalabs.com']
  s.homepage    = 'https://www.github.com/lucalabs/cucumberhtml'
  s.summary     = 'Cucumber to HTML converter.'
  s.description = 'Cucumber to HTML converter.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'rubocop'

  s.add_dependency 'cells-rails'
  s.add_dependency 'cells-slim'
  s.add_dependency 'trailblazer-cells'
end
