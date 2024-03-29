$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "measure_learn/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "measure_learn"
  s.version     = MeasureLearn::VERSION
  s.authors     = ["Steve Hull"]
  s.email       = ["p.witty@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Measure/Learn"
  s.description = "Quickly visualize (eg, graph) your data"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "capybara"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "fixture_builder"
  s.add_development_dependency "database_cleaner"
end
