# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'adorable_avatars/version'

Gem::Specification.new do |s|
  s.name          = "adorable_avatars"
  s.version       = AdorableAvatars::VERSION
  s.authors       = ["Mateusz Świszcz"]
  s.email         = ["swistaku@gmail.com"]
  s.homepage      = "http://github.com/notimetoexplain/adorable_avatars"
  s.summary       = "ActionView helper to render adorable avatars"
  s.description   = "Helper method to create unique random avatars for user basing on for ex. username or email"

  s.files         = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.platform      = Gem::Platform::RUBY
  s.require_path  = 'lib'

  s.add_dependency 'actionpack'
end
