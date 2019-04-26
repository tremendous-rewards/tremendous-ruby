require 'minitest/autorun'
require 'webmock/minitest'
require 'tremendous'

class FundingSourceTest < Minitest::Test

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
      assert_equal funding_sources.length, 2
    end
  end
end
