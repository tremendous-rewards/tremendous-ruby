require 'spec_helper'

describe Tremendous::Rest do
  let(:client) { described_class.new(access_token, endpoint) }
  let(:access_token) { 'your-access-token' }
  let(:endpoint) { 'https://api.tremendous.com/api/v2/' }

  let(:headers) do
    {
      authorization: "Bearer #{access_token}",
      content_type: "application/json",
      user_agent:  "Tremendous Ruby v#{Tremendous::VERSION}",
    }
  end

  shared_examples 'handles error' do
    let(:response) { {status: 500, body: {errors: ['Internal Server Error']}.to_json} }

    specify do
      expect(&subject).to raise_error(Tremendous::Error, 'Code: 500; Data: ["Internal Server Error"]')
    end
  end

  shared_examples 'handles non-json formatted error response' do
    let(:response) { {status: 500, body: '<html><head></head><body></body></html>'} }

    specify do
      expect(&subject).to raise_error(Tremendous::Error, 'Code: 500; Data: ["Internal Server Error"]')
    end
  end

  describe '#orders' do
    let(:order_data) do
      {
        'id' => 'QABSTARTSFSIO',
        'external_id' => 'id-from-client',
        'payment' => {'subtotal' => 10, 'total' => 10, 'fees' => 0},
        'rewards' => [{'id' => 'DDABSUKSFSTY'}]
      }
    end

    let(:html_response) do
      '<html><head></head><body></body></html>'
    end

    describe '#list' do
      subject {->{ client.orders.list }}

      before do
        stub_request(:get, "#{endpoint}orders").with(headers:).to_return(response)
      end
      let(:response) { {status: 200, body: {orders: [order_data]}.to_json} }

      it 'returns list of orders' do
        expect(subject.call).to eq [order_data]
      end

      it_behaves_like 'handles error'
      it_behaves_like 'handles non-json formatted error response'
    end

    describe '#create!' do
      subject {->{ client.orders.create!(order_data) }}

      before do
        stub_request(:post, "#{endpoint}orders").with(headers:).to_return(response)
      end
      let(:response) { {status: 200, body: {order: order_data}.to_json} }

      it 'returns created order' do
        expect(subject.call).to eq order_data
      end

      it_behaves_like 'handles error'
      it_behaves_like 'handles non-json formatted error response'
    end
  end
end
