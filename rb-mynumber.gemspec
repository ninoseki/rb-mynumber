# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mynumber/version'

Gem::Specification.new do |spec|
  spec.name          = "rb-mynumber"
  spec.version       = MyNumber::VERSION
  spec.authors       = ["ninoseki"]
  spec.email         = ["zgok0079@gmail.com"]

  spec.summary       = "Check given string/number is a MyNumber or not"
  spec.description   = "Check given string/number is a MyNumber or not"
  spec.homepage      = "https://github.com/ninoseki/rb-mynumber"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
