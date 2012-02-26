require 'rake/clean'
require 'modernizr'

VERSION = Modernizr::VERSION

file "modernizr-#{VERSION}.tar.gz" do |f|
  sh "curl -s -L https://github.com/Modernizr/Modernizr/tarball/v#{VERSION} > #{f.name}"
end
CLEAN.include "modernizr-#{VERSION}.tar.gz"

file "modernizr-#{VERSION}" => "modernizr-#{VERSION}.tar.gz" do |f|
  mkdir_p f.name
  sh "tar -xz --strip-components 1 -C #{f.name} -f modernizr-#{VERSION}.tar.gz"
end
CLEAN.include "modernizr-#{VERSION}"

task :update => "modernizr-#{VERSION}" do
  cp "modernizr-#{VERSION}/modernizr.js", "lib/modernizr.js"

  Dir["modernizr-#{VERSION}/feature-detects/*"].each do |fn|
    source = File.read(fn)
    dest   = File.join("lib/modernizr", File.basename(fn))

    File.open(dest, 'w') do |f|
      f.write "//= require modernizr\n"
      f.write source
    end
  end
end
CLOBBER.include "lib/modernizr.js"
CLOBBER.include "lib/modernizr/*.js"


task :default => [:update, :clean]
