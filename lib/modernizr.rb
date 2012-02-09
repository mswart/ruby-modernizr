module Modernizr
  VERSION = "2.5.2"

  PATH = File.expand_path("..", __FILE__)

  def self.path
    PATH
  end

  # Rails "Magic"
  if defined? ::Rails::Railtie
    class Railtie < ::Rails::Railtie
      initializer "modernizr" do |app|
        app.assets.append_path Modernizr.path
      end
    end
  end
end