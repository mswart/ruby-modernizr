Modernizr Ruby Gem
==================

Neatly packaged Modernizr JS assets for use in Sprockets or the Rails 3 asset pipeline.


Installation
------------

**Rails**

Add `modernizr` to your Gemfile.

``` ruby
gem "modernizr"
```

Should be automatically added to your asset load path.

**Sprockets**

Add `modernizr` to your Gemfile as well, but you'll also have to manually setup your Sprockets load path. Depending on your setup, require `modernizr` and add `Modernizr.path` to your Sprockets environment.

``` ruby
env = Sprockets::Environment.new

require 'modernizr'
env.append_path Modernizr.path
```


Usage
-----

Now you just need to require `modernizr` from your javascript bundle.

``` javascript
//= require modernizr
```

That will pull in all the core feature detections.

You can also pull in optional community detections:

``` javascript
//= require modernizr
//= require modernizr/contenteditable
//= require modernizr/cors
//= require modernizr/emoji
```

See a full list of community detects under [feature-detects/](https://github.com/Modernizr/Modernizr/tree/master/feature-detects).


Releases
--------

New versions of this gem will only be published when there is a new stable version of Modernizr. Maybe if they do an official beta, I might too. But no otherwise no untagged releases.



Caveats
-------

This project isn't that interesting, yet...

If you look the [Modernizr download page](http://www.modernizr.com/download/), you'll notice you can customize and opt out of alot more stuff. With this library, only the community add-ons section is optional. Kind of sucks.

Well, good news is that Modernizr v3 is supposed to moving most of its "core" feature detects out of the main file into seperate ones. Once this happens you'll be able to get the same level of granularity from this gem as the awesome download builder.

Follow allow [Modernizr issue #486](https://github.com/Modernizr/Modernizr/issues/486).