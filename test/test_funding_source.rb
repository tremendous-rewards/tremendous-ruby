require 'minitest/autorun'
require 'webmock/minitest'
require 'tremendous'

class FundingSourceTest < Minitest::Test
  def test_initialization
    data = {
      "id": "K908LJARLJ",
      "method": "credit_card",
      "meta": {
        "accountholder_name": "James Sale",
        "network": "visa",
        "last4": "1234"
      }
    }
    funding_source = Tremendous::FundingSource.new(data)
    assert_equal data[:id], funding_source.id
    assert_equal data[:method], funding_source.method
    assert_equal data[:meta].length, funding_source.meta.length
  end

  describe 'requires config' do
    before do
      Tremendous.configure do |config|
        config[:access_token] = 'abcd'
      end
    end

    def test_list
      response = {
        "funding_sources": [
          {
            "id": "K908LJARLJ",
            "method": "credit_card",
            "meta": {
              "accountholder_name": "James Sale",
              "network": "visa",
              "last4": "1234"
            }
          },
          {
            "id": "LARFAF2423",
            "method": "bank_account",
            "meta": {
              "accountholder_name": "James Bay",
              "account_number_mask": "6789",
              "bank_name": "Chase"
            }
          }
        ]
      }

      stub_request(:get, 'https://www.tremendous.com/api/v1/funding_sources').
        with(query: Tremendous.default_options).
        to_return(
          status: 200,
          body: response.to_json,
          headers: {"Content-Type"=> "application/json"}
        )
      funding_sources = Tremendous::FundingSource.list
      assert_equal funding_sources.count, 2
    end
  end
end
