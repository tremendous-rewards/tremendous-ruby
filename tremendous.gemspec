# encoding: utf-8
require File.expand_path('../lib/tremendous/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'tremendous_ruby'
  spec.version       = Tremendous::VERSION
  spec.summary       = "Send rewards and incentives programmatically"
  spec.summary       = 'Tremendous Gift Card Ruby API SDK'
  spec.licenses      = ['MIT']
  spec.homepage      = 'https://github.com/GiftRocket/tremendous-ruby'
  spec.summary       = 'Tremendous Ruby API SDK'
  spec.authors       = ['Tremendous']
  spec.email         = ['developers@tremendous.com', 'kapil@giftrocket.com']
  spec.files         = Dir['lib/**/*.rb']

  spec.add_runtime_dependency 'activesupport', '>= 3.2', '<= 5.2.1'
  spec.add_runtime_dependency 'httparty', '~> 0.15.0'
  spec.add_runtime_dependency 'jwt', '1.5.0'

  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'mocha', '~> 1.1'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'webmock', '~> 1.20'

end
