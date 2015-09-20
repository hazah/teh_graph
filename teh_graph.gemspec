$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "teh_graph/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "teh_graph"
  s.version     = TehGraph::VERSION
  s.authors     = ["Ivgeni Slabkovski"]
  s.email       = ["zhenya@zhenya.ca"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of TehGraph."
  s.description = "TODO: Description of TehGraph."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "rails-api", "~> 0.4.0"
  s.add_dependency "devise"
  s.add_dependency "devise_token_auth"
  s.add_dependency "omniauth"
  s.add_dependency "responders"
  s.add_dependency "decent_exposure"
  s.add_dependency "pundit"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rails-api", "~> 0.4.0"
  s.add_development_dependency "devise"
  s.add_development_dependency "devise_token_auth"
  s.add_development_dependency "omniauth"
  s.add_development_dependency "decent_exposure"
  s.add_development_dependency "pundit"
end
