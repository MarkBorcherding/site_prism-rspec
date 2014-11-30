# SitePrism Rspec Matchers

A set of RSpec matchers that give more verbose error messages.

```
Failures:

  1) foo shouldn't find all the things
     Failure/Error: site.home.ol.should have_all_the_things
       Expected Ol to have ol_a, ol_b, ol_c, but didn't find ol_c.
     # ./spec/have_all_the_things_spec.rb:12:in `block (2 levels) in <top (required)>
```

[![Build Status](https://travis-ci.org/MarkBorcherding/site_prism-rspec.svg?branch=master)](https://travis-ci.org/MarkBorcherding/site_prism-rspec)
[![Dependency Status](https://gemnasium.com/MarkBorcherding/site_prism-rspec.svg)](https://gemnasium.com/MarkBorcherding/site_prism-rspec)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'site_prism-rspec'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install site_prism-rspec

## Usage

```
require 'site_prism/rspec'
```

## Contributing

1. Fork it ( https://github.com/markborcheridng/site_prism-rspec/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
