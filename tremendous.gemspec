# encoding: utf-8
require File.expand_path('../lib/tremendous/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name        = "tremendous_ruby"
  spec.version     = Tremendous::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/tremendous-rewards/tremendous-ruby"
  spec.summary       = "Tremendous Ruby API SDK"
  spec.authors       = ["Tremendous Developers"]
  spec.email         = ["developers@tremendous.com"]
  spec.metadata      = {
    "documentation_uri" => "https://www.tremendous.com/docs",
    "source_code_uri"   => spec.homepage
  }

  spec.add_runtime_dependency "faraday", ">= 1.0.1", "< 3.0"
  spec.add_runtime_dependency "faraday-multipart"

  spec.files         = Dir["lib/**/*.rb"]
  spec.files         = Dir["spec/**/*.rb"]
  spec.executables   = []
  spec.require_paths = ["lib"]
end
