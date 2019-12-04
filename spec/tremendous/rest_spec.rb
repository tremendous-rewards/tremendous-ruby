require 'spec_helper'

describe Tremendous::Rest do
  let(:client) { described_class.new(access_token, endpoint) }
  let(:access_token) { 'your-access-token' }
  let(:endpoint) { 'https://www.tremendous.com/api/v2/' }

  shared_examples 'handles error' do
    let(:response) { {status: 500, body: {errors: ['Internal Server Error']}.to_json} }

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

    describe '#list' do
      subject {->{ client.orders.list }}

      before do
        stub_request(:get, "#{endpoint}orders").
          with(headers: {authorization: "Bearer #{access_token}"}).
          to_return(response)
      end
      let(:response) { {status: 200, body: {orders: [order_data]}.to_json} }

      it 'returns list of orders' do
        expect(subject.call).to eq [order_data]
      end

      it_behaves_like 'handles error'
    end

    describe '#create!' do
      subject {->{ client.orders.create!(order_data) }}

      before do
        stub_request(:post, "#{endpoint}orders").
          with(headers: {authorization: "Bearer #{access_token}", content_type: 'application/json'}).
          to_return(response)
      end
      let(:response) { {status: 200, body: {order: order_data}.to_json} }

      it 'returns created order' do
        expect(subject.call).to eq order_data
      end

      it_behaves_like 'handles error'
    end
  end
end
