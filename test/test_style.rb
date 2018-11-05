require 'minitest/autorun'
require 'webmock/minitest'
require 'tremendous'

class StyleTest < Minitest::Test
  def test_initialization
    data = {
      "id": 'ABCD23424',
      "card": {
        "url": 'https://tremendous.imgix.net/[asset_path]/thank_you_tree.jpg'
      }
    }.with_indifferent_access
    style = Tremendous::Style.new(data)
    assert_equal data[:id], style.id
    assert_equal data[:card], style.card
    assert_equal data[:card][:url], style.url
  end

  describe 'requires config' do
    before do
      Tremendous.configure do |config|
        config[:access_token] = 'abcd'
      end
    end

    def test_list
      response = {
        "styles": [
          {
            "id": 'ABCD23424',
            "card": {
              "url": 'https://tremendous.imgix.net/[asset_path]/thank_you_tree.jpg'
            }
          }
        ]
      }

      stub_request(:get, 'https://www.tremendous.com/api/v1/styles')
        .with(query: Tremendous.default_options)
        .to_return(
          status: 200,
          body: response.to_json,
          headers: { 'Content-Type' => 'application/json' }
        )
      styles = Tremendous::Style.list
      assert_equal styles.count, 1
    end
  end
end
