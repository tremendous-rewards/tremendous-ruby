# encoding: utf-8
require File.expand_path('../lib/tremendous/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'tremendous_ruby'
  spec.version       = Tremendous::VERSION
  spec.licenses      = ['MIT']
  spec.homepage      = 'https://github.com/tremendous-rewards/tremendous-ruby'
  spec.summary       = 'Tremendous Ruby API SDK'
  spec.authors       = ['Tremendous Developers']
  spec.email         = ['developers@tremendous.com']
  spec.files         = Dir['lib/**/*.rb']
  spec.metadata      = {
    'documentation_uri' => 'https://www.tremendous.com/docs',
    'source_code_uri'   => spec.homepage
  }

  spec.add_runtime_dependency 'activesupport', '>= 3.2'
  spec.add_runtime_dependency 'httparty', '>= 0.18.0'
  spec.add_runtime_dependency 'jwt', '>= 1.5.0'

  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '>= 3.5.0'
  spec.add_development_dependency 'webmock', '>= 3'
end
