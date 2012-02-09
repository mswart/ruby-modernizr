require File.expand_path("../lib/modernizr", __FILE__)

Gem::Specification.new do |s|
  s.name    = "modernizr"
  s.version = Modernizr::VERSION

  s.homepage = "https://github.com/josh/ruby-modernizr"
  s.summary  = "Modernizr JS assets for Sprockets/Rails"
  s.description = "Neatly packaged Modernizr JS assets for use in Sprockets or the Rails 3 asset pipeline."

  s.files = Dir["README.md", "lib/**/*"]

  s.add_dependency "sprockets", "~> 2.0"

  s.author = "Joshua Peek"
  s.email  = "josh@joshpeek.com"
end
