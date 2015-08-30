$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "no_cms/admin/users/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-admin-devise-pundit"
  s.version     = NoCms::Admin::Users::VERSION
  s.authors     = ["David Brenes"]
  s.email       = ["gems@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-admin-devise-pundit"
  s.summary     = "Gem for managing admin users with devise and pundit for permissions"
  s.description = "Gem for managing admin users with devise and pundit for permissions"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 4.0.0", "< 5"
  s.add_dependency "nocms-admin", "~> 0.0.1"
  s.add_dependency "devise", "~> 3.5.0"
  s.add_dependency "rolify", "~> 4.1.1"

  s.add_development_dependency "sqlite3"
end
