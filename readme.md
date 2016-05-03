# attn - a gem to catch the eye
attn is a simple Ruby Gem designed to make locating specific lines of output in the terminal easier. This is achieved through creating colored output before and after the lines of code you want to locate.
## Installation
```
dev :> gem install attn
```
## Usage
It's as simple as requiring the gem in your project. Once required, attn has 2 modes, and a handful of colorization options. 

```
irb(main):002:0> require 'attn'

irb(main):002:0> attn
* * * * * * * * * * * * * * * * * * * * * * * * *

irb(main):008:0> attn("Code to highlight")
* * * * * * * * * * START * * * * * * * * * * * *
"Code to highlight"
* * * * * * * * * * FINISH  * * * * * * * * * * *
```

By default, all lines of asterisks will be yellow. This can be changed by specifying a color in the arguments as seen below. 

```
irb(main):009:0> attn('red')
* * * * * * * * * * * * * * * * * * * * * * * * *

irb(main):010:0> attn("Code to highlight, with color", "blue")
* * * * * * * * * * START * * * * * * * * * * * *
"Code to highlight, with color"
* * * * * * * * * * FINISH  * * * * * * * * * * *
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