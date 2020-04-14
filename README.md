# Tremendous Rewards and Incentives Ruby Client

- [Documentation](https://www.tremendous.com/docs)
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

If you are running Rails 5.2.4.x or above, feel free to point your Gemfile at this repository's `master` branch, at the most recent codebase isn't published on rubygems at this time. 

Usage
-----

```ruby
require 'tremendous'

# Configure with your sandbox / production token.
client = Tremendous::Rest.new(
  "[YOUR SANDBOX ACCESS TOKEN]",
  "https://testflight.tremendous.com/api/v2/"
)

# For production, change the URL to: `https://www.tremendous.com/api/v2/` instead.

#
# Generate an order.
#

# Campaigns are created within the dashboard by team admins.
# They define the catalog and presentation of your reward.
# API requests can always override these settings
# within the specific reward object by specifying the catalog, message, etc.
campaigns = client.campaigns.list
campaign_id = campaigns.first[:id]

# The funding source you select is how you are charged for the order.
# In this example, we use the prefunded balance funding source
funding_source_id = client.funding_sources.list.find { |f| f[:method] == "balance" }[:id]

# In this other example, we find the campaign named "Birthdays"
campaign_id = client.campaigns.list.find { |f| f[:name] == "Birthdays" }[:id]

# Optionally pass a unique external_id for each order create call
# to guarantee that your order is idempotent and not executed multiple times.
external_id = "[OPTIONAL_EXTERNAL_ID]"

# An Hash representing the rewards you'd like to send.
order_data = {
  external_id: external_id,
  payment: {
    funding_source_id: funding_source_id
  },
  reward: {
    value: {
      denomination: amount,
      currency_code: 'USD'
    },
    campaign_id: campaign_id,
    delivery: {
      method: 'EMAIL'
    },
    recipient: {
      email: "sarah@tremendous.com",
      name: "Sarah Smith"
    }
  },
}

# Submit the order.
order = client.orders.create!(order_data)

# Retrieve the reward
client.rewards.show(order[:rewards].first[:id])
```

Contributing
------------
The gem is maintained by Tremendous engineers, but all are welcome to contribute.
Feel free to open an issue, submit a PR, or post a question.
