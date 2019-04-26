# GiftRocket Gift Card Ruby API

- [Documentation](https://www.tremendous.com/docs)
- [Product information](https://www.tremendous.com)
- [Get an API Key](https://account.tremendous.com/rewards/auth/login)

Installation
------------

`$ gem install 'tremendous_ruby'`

or, add to your Gemfile

```ruby
source 'https://rubygems.org'
gem 'tremendous_ruby'
```

Usage
-----

```ruby
require 'tremendous'

# Configure with your sandbox / production token.
Tremendous.configure do |config|
  config[:access_token] = '[YOUR_API_KEY]'
  config[:base_api_uri] = 'https://testflight.tremendous.com/api/v1/'
end

#
# Generate an order.
#

# Campaigns are created within the dashboard by team admins.
# They define the catalog and presentation of your reward.
# API requests can always override these settings
# within the specific gift object by specifying the catalog, message, etc.
campaigns = Tremendous::Campaign.list
campaign_id = campaigns.first[:id]

# The funding source you select is how you are charged for the order.
funding_sources = Tremendous::FundingSource.list
funding_source_id = funding_sources.first[:id]

# Optionally pass a unique external_id for each order create call
# to guarantee that your order is idempotent and not executed multiple times.
external_id = "[OPTIONAL_EXTERNAL_ID]"

# An array data representing the gifts you'd like to send.
order_data = {
  external_id: external_id,
  funding_source_id: funding_source_id,
  campaign_id: campaign_id,
  gifts: [
    {
      "amount": 30,
      "recipient": {
        "email": "sam@yourdomain.com",
        "name": "Sam Stevens"
      }
    }
  ]
}

# Submit the order to GiftRocket.
order = Tremendous::Order.create!(order_data)

# Retrieve the order and gift.
Tremendous::Gift.retrieve(order[:gifts].first[:id])
```

Contributing
------------
The gem is maintained by Tremendous engineers, but all are welcome to contribute.
Feel free to open an issue, submit a PR, or post a question.
