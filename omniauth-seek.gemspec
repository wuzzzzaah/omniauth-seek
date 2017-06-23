# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/seek/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-seek"
  spec.version       = Omniauth::Seek::VERSION
  spec.authors       = ["Omar Shariff"]
  spec.email         = ["omarshariffd@gmail.com"]

  spec.summary       = %q{SEEK Strategy for Omniauth}
  spec.description   = %q{This is a SEEK OAuth Strategy for Omniauth}
  spec.homepage      = "https://github.com/wuzzzzaah/omniauth-seek"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
