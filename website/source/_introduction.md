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
