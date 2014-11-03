# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'movement/version'

Gem::Specification.new do |spec|
  spec.name          = "movement"
  spec.version       = Movement::VERSION
  spec.authors       = ["Jack Dean Watson-Hamblin"]
  spec.email         = ["info@fluffyjack.com"]
  spec.summary       = %q{Full Stack Framework for RubyMotion}
  spec.description   = %q{Movement is to RubyMotion as Rails is to Ruby.}
  spec.homepage      = "https://github.com/FluffyJack/movement"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "thor", "~> 0.19"
end
