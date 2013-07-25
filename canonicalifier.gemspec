$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "canonicalifier/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "canonicalifier"
  s.version     = Canonicalifier::VERSION
  s.authors     = ["Ronny Haryanto"]
  s.email       = ["ronny@haryan.to"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/ronny/canonicalifier"
  s.summary     = "Rails plugin to handle canonical urls"
  s.description = "Rails plugin to handle canonical urls"

  s.files = Dir["lib/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0rc1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "simplecov"
end
