# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mocha-color/version"

Gem::Specification.new do |s|
  s.name        = "mocha-color"
  s.version     = Mocha::Color::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rafael Souza"]
  s.email       = ["me@rafaelss.com"]
  s.homepage    = "http://github.com/rafaelss/mocha-color"
  s.summary     = %q{Add some colors to mocha output}
  s.description = %q{This gem try to turn mocha output more readable, adding some colors}

  s.add_runtime_dependency "mocha", "~> 0.9.10"
  s.add_runtime_dependency "test-unit", "~> 2.1.2"
  s.add_development_dependency "minitest", "~> 2.0.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
