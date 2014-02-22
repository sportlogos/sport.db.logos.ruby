# sport.db.logos

sportdb-logos gem - national team logos bundled for reuse w/ asset pipeline


* home  :: [github.com/sportlogos/sport.db.logos.ruby](https://github.com/sportlogos/sport.db.logos.ruby)
* bugs  :: [github.com/sportlogos/sport.db.logos.ruby/issues](https://github.com/sportlogos/sport.db.logos.ruby/issues)
* forum :: [groups.google.com/group/opensport](https://groups.google.com/group/opensport)

## Usage

### Rails Asset Pipline


In Your Gemfile add:

    gem 'sportdb-logos', '9.9.9',  :git => 'https://github.com/sportlogos/sport.db.logos.ruby.git' 

And use it like:

    image_tag( "logos/24x24/#{team.key}.png" )   e.g.
    image_tag( 'logos/24x24/aut.png' )



## Album Pages (Preview)

- [24x24](http://sportlogos.github.io/sport.db.logos.ruby/24.html)
- [32x32](http://sportlogos.github.io/sport.db.logos.ruby/32.html)

## Questions? Comments?

Send them along to the [Open Sports Database & Friends Forum/Mailing List](http://groups.google.com/group/opensport).
Thanks!
