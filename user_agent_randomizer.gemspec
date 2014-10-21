# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'user_agent_randomizer/version'

Gem::Specification.new do |spec|
  spec.name          = "user-agent-randomizer"
  spec.version       = UserAgentRandomizer::VERSION
  spec.date          = "2014-06-27"
  spec.authors       = ["Christoph Pilka"]
  spec.email         = ["c.pilka@asconix.com"]
  spec.summary       = %q{Random HTTP User-Agent string generator}
  spec.description   = ""
  spec.homepage      = "https://github.com/asconix/user-agent-randomizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "nokogiri", "~> 1.6"
  spec.add_development_dependency "simplecov", "~> 0.9"
  spec.add_development_dependency "coveralls", "~> 0.7"
end
