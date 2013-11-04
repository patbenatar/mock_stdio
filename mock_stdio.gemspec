# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mock_stdio"

Gem::Specification.new do |spec|
  spec.name          = "mock_stdio"
  spec.version       = MockStdio::VERSION
  spec.authors       = ["patbenatar"]
  spec.email         = ["nick@gophilosophie.com"]
  spec.description   = "Helpers for working with stdin and stdout in tests"
  spec.summary       = "Helpers for working with stdin and stdout in tests"
  spec.homepage      = "http://github.com/patbenatar/mock_stdio"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
