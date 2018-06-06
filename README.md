# Tremendous Gift Card Ruby API

- [Documentation](https://www.tremendous.com/docs)
- [Product information](https://www.tremendous.com/rewards)
- [Get an API Key](https://www.tremendous.com/rewards/auth/signup)

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
  config[:access_token] = '[SANDBOX_API_KEY]'
  config[:base_api_uri] = 'https://testflight.tremendous.com/api/v1/'
end

funding_source_id = Tremendous::FundingSource.list.first.id
catalog = Tremendous::Catalog.list
orders = Tremendous::Order.list # blank at first.
gifts = Tremendous::Gift.list # blank at first.

#
# Generate an order.
#

# The funding source you select is how you are charged for the order.
funding_source_id = Tremendous::FundingSource.list.first.id

# Optionally pass a unique external_id for each order create call
# to guarantee that your order is idempotent and not executed multiple times.
external_id = "ID_FROM_YOU_SYSTEM"

# An array data representing the gifts you'd like to send.

gifts = [
  {
    "amount": 30,
    "recipient": {
      "name": "John Smith",
      "email": "john@smith.com",
      "delivery_method": "EMAIL"
    },
  }
]

order = Tremendous::Order.create!(funding_source_id, gifts)

# Submit the order to tremendous.
order = Tremendous::Order.create!(funding_source_id, gifts, external_id)

# Retrieve the order and gift.
Tremendous::Gift.retrieve(order.gifts.first.id)
```

Contributing
------------
The gem is maintained by Tremendous engineers, but all are welcome to contribute.
Feel free to open an issue, submit a PR, or post a question.
