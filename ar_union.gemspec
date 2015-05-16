# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ar_union/version'

Gem::Specification.new do |spec|
  spec.name          = "ar_union"
  spec.version       = ArUnion::VERSION
  spec.authors       = ["Michael Nomitch"]
  spec.email         = ["mnomitch@instructure.com"]
  spec.summary       = %q{AR Relation patch allowing for chainable union scopes}
  spec.description   = %q{AR Relation patch allowing for chainable union scopes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "activerecord", "> 2.0"
end
