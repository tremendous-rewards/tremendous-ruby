# Tremendous Rewards and Incentives Ruby Client

- [Documentation](https://www.tremendous.com/docs/v2)
- [Product information](https://www.tremendous.com)
- [Get an API Key](https://testflight.tremendous.com/login)

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
  config[:access_token] = '[YOUR_ACCESS_TOKEN]'
  config[:base_api_uri] = 'https://testflight.tremendous.com/api/v2/'
end

#
# Generate an order.
#

# Campaigns are created within the dashboard by team admins.
# They define the catalog and presentation of your reward.
# API requests can always override these settings
# within the specific reward object by specifying the catalog, message, etc.
campaigns = Tremendous::Campaign.list
campaign_id = campaigns.first[:id]

# The funding source you select is how you are charged for the order.
funding_sources = Tremendous::FundingSource.list
funding_source_id = funding_sources.first[:id]


# Products define the set of reward options made available to your recipients
products = Tremendous::Product.list.map { |p| p[:id ] }

# Optionally pass a unique external_id for each order create call
# to guarantee that your order is idempotent and not executed multiple times.
external_id = "[OPTIONAL_EXTERNAL_ID]"

# An array data representing the rewards you'd like to send.
order_data = {
  external_id: external_id,
  payment: {
    funding_source_id: funding_source_id,
  },
  reward: {
    value: {
      denomination: 20,
      currency_code: "USD"
    },
    products: products,
    campaign_id: campaign_id,
    delivery: {
      method: "EMAIL",
    },
    recipient: {
      email: "sam@yourdomain.com",
      name: "Sam Stevens"
    }
  }
}

# Submit the order.
order = Tremendous::Order.create!(order_data)

# Retrieve the reward
Tremendous::Reward.show(order[:rewards].first[:id])
```

Contributing
------------
The gem is maintained by Tremendous engineers, but all are welcome to contribute.
Feel free to open an issue, submit a PR, or post a question.
