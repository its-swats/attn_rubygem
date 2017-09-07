Gem::Specification.new do |s|
  s.name        = 'attn'
  s.version     = '0.0.1'
  s.date        = '2016-05-03'
  s.summary     = "Easy to spot, colored strings in the console"
  s.description = "A simple gem to make finding specific lines of output easier in the console"
  s.authors     = ["Shawn Watson"]
  s.email       = 'shawn.h.watson@gmail.com'
  s.files       = ["lib/attn.rb"]
  s.homepage    =
    'http://rubygems.org/gems/attn'
  s.license       = 'MIT'
  s.add_runtime_dependency 'awesome_print', '~> 0'
  s.add_runtime_dependency 'colorize', '~> 0'
end
