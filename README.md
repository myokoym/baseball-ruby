# baseball-ruby

A library for baseball applications with Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'baseball'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baseball

## Usage

```ruby
require "baseball"

player = Baseball::Player.new

player.out!
player.hit!
player.out!

p player.pb   #=> 3
p player.ab   #=> 3
p player.h    #=> 1
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
