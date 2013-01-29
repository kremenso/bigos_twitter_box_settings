$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bigos_twitter_box/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bigos_twitter_box"
  s.version     = BigosTwitterBox::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BigosTwitterBox."
  s.description = "TODO: Description of BigosTwitterBox."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  # s.add_dependency "jquery-rails"
  s.add_dependency 'twitter', '4.2.0'
  s.add_development_dependency "sqlite3"
end
