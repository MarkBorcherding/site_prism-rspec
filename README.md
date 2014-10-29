# SitePrism Rspec Matchers

A set of RSpec matchers that give more verbose error messages.

```
Failures:

  1) foo should find all the things
     Failure/Error: site.home.ol.should be_blah
       Expected #<Ol:0x007f85eac6f800> to have ["ol_a", "ol_b", "ol_c"], but didn't find ["ol_c"].
     # ./spec/blah_blah_spec.rb:9:in `block (2 levels) in <top (required)>'
```


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'site_prism_rspec'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install site_prism_rspec

## Usage

```
require 'site_prism/rspec'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/site_prism_rspec_matchers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
