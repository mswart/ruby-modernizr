module Modernizr
  VERSION = "2.6.2"

  PATH = File.expand_path("..", __FILE__)

  def self.path
    PATH
  end

  # Rails "Magic"
  if defined? ::Rails::Railtie
    class Railtie < ::Rails::Railtie
      initializer "modernizr", :group => :all do |app|
        app.config.assets.paths << Modernizr.path
      end
    end
  end
end
