require 'tremendous'

require 'bundler'
Bundler.require :test

require 'webmock'
require 'webmock/rspec/matchers'
WebMock.enable!
WebMock.disable_net_connect!

RSpec.configure do |config|
  config.include WebMock::API
  config.include WebMock::Matchers
end
