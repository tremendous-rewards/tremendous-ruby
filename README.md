# Tremendous

A Ruby client library for the [Tremendous API][docs].

> [!NOTE]
> This branch includes the v5 version of the Tremendous Ruby client, a new version based
> on our [API schema][ref] docs. If you are using the v4 versions, please check our
> [`UPGRADING`](UPGRADING.md) guide

## Installation

```sh
$ gem install tremendous_ruby
# or add it to your Gemfile
$ bundle add tremendous_ruby
```

## Getting started

All API requests require an access token.  A sandbox access token is assigned upon signup through the [Tremendous Sandbox Environment][docs]. Once you are ready to move to production, you will be assigned a production access token.

### Authentication

Using a global config & client instances:

```ruby
Tremendous::Configuration.default.configure do |config|
  # you can use `Tremendous::Configuration::Environment["production"]` when
  # ready to use our production environment.
  config.server_index = Tremendous::Configuration::Environment["testflight"]

  config.access_token = "YOUR-ACCESS-TOKEN"
end

client = Tremendous::TremendousApi.new
```

Building your own:

```ruby
config = Tremendous::Configuration.new do |config|
# ...
end

api = Tremendous::ApiClient.new(config)

client = Tremendous::TremendousApi.new(api)
```

### Examples

Submitting an order:

```ruby
order_data = {
  payment: {
    funding_source_id: "balance",
  },
  reward: {
    value: {
      denomination: 20,
      currency_code: 'USD'
    },
    campaign_id: "CAMPAIGN_ID",
    delivery: {
      method: 'EMAIL',
    },
    recipient: {
      email: 'sarah@tremendous.com',
      name: 'Sarah Smith'
    }
  }
}

response = client.create_order(order_data)
puts "Order created! ID: #{response.order.id}"
```

Retrieving an Order and a Reward

```ruby
order = client.get_order("[ORDER_ID]").order
reward = client.get_reward("[REWARD_ID]").reward

puts "The order status is #{order.status}"
puts "The reward was delivered to #{reward.recipient.email}"
```

Listing products:

```ruby
products = api_client.list_products.products

products.each { |product| puts product.name }
```

Listing funding sources:

```ruby
funding_sources = client.funding_sources.list

funding_sources.each do |funding_source|
  puts "* #{funding_source.method} => #{funding_source.id}"
end
```

[ref]: https://developers.tremendous.com/reference
[docs]: https://tremendous.com/docs

Testing
