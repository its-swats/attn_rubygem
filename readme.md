# attn - a gem to catch the eye
attn is a simple Ruby Gem designed to make locating specific lines of output in the terminal easier. This is achieved through creating colored output before and after the lines of code you want to locate or by displaying a line of emojis to act as a standalone line break.
## Installation
```
dev :> gem install attn
```
## Usage
It's as simple as requiring the gem in your project. Once required, attn has 2 modes, and a handful of colorization options.

```ruby
irb(main):002:0> require 'attn'

irb(main):002:0> attn
🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟  🌟

irb(main):008:0> attn("Variable_to_highlight")
⬇ ⬇ ⬇ ⬇ ⬇  CLASS: Array LENGTH: 3 CALLER: sandbox.rb:26:in `<main>' ⬇ ⬇ ⬇ ⬇ ⬇

"Variable_to_highlight"

⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆  FINISH ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆
```

By default, all lines except the variable with be a random color. This can be changed by specifying a color in the arguments as seen below.

```ruby

irb(main):010:0> attn("Variable_to_highlight_with_color", "blue")
⬇ ⬇ ⬇ ⬇ ⬇  CLASS: Array LENGTH: 3 CALLER: sandbox.rb:26:in `<main>' ⬇ ⬇ ⬇ ⬇ ⬇

"Variable_to_highlight_with_color"

⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆  FINISH ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆ ⬆
```

The supported colors are:

1. red
2. green
3. yellow
4. blue
5. magenta
6. cyan

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

* 5/3/2016 - initial release
* 9/9/2017 - ver: 0.0.2 enhanced views
