require 'support/http_helpers'
require 'spec_helper'
require 'httparty'

RSpec.configure do |c|
  c.include HttpHelpers
end

describe Tremendous::Error do
  describe 'to_s with json response' do

    let(:response) do
      mock_response(500, '{ "errors": ["Internal Server Error"] }')
    end

    subject { -> { Tremendous::Error.new(response).to_s } }

    it 'does not raise error' do
      expect { subject.call }.not_to raise_error
    end

  end

  describe 'to_s with html response' do
    let(:response) do
      mock_response(500, '<html><head></head><body></body></html>')
    end

    subject { -> { Tremendous::Error.new(response).to_s } }

    it 'does not raise error' do
      expect { subject.call }.not_to raise_error
    end
  end
end