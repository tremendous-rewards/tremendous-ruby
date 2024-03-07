# Upgrading from v4

The `5.x.x` releases are a full rewrite based on our [API schema][ref] docs

Here we have "before and after" of how a few API calls looked like with our v4 version, and how they
can be written using the new library.

[ref]: https://developers.tremendous.com/reference

## Configuring the client

### `v4`

```ruby
client = Tremendous::Rest.new("[YOUR SANDBOX ACCESS TOKEN]", "https://testflight.tremendous.com/api/v2/")
```

### `v5`

```ruby
config = Tremendous::Configuration.new do |config|
  config.server_index = Tremendous::Configuration::Environment["testflight"]
  config.access_token = "YOUR-ACCESS-TOKEN"
end

client = Tremendous::TremendousApi.new(Tremendous::ApiClient.new(config))
```

## Creating an `Order`

### `v4`

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

order = client.orders.create!(order_data)
order.id # => "the order id"
```

### `v5`

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
response.order.id # => "the order id"
```

## Retrieving an `Order`

### `v4`

```ruby
order = client.orders.show("[ORDER_ID]")

puts "Order was created at #{order.created_at}"
```

### `v5`

```ruby
order = client.get_order("[ORDER_ID]").campaign

puts "Order was created at #{order.created_at}"
```

## Listing `Funding Source`s

### `v4`

```ruby
funding_sources = client.funding_sources.list

funding_sources.each do |funding_source|
  puts "* #{funding_source.method} => #{funding_source.id}"
end
```

### `v5`

```ruby
funding_sources = client.list_funding_sources.funding_sources

funding_sources.each do |funding_source|
  puts "* #{funding_source.method} => #{funding_source.id}"
end
```

## Handling errors

## `v4`

On `v4`, the library can raise `Tremendous::Error` or one of its subclasses, like `Tremendous::AccessError`,
`Tremendous::PaymentError` or `Tremendous::BadDataError`.

```ruby
client = Tremendous::Rest.new("INVALID_TOKEN", "https://testflight.tremendous.com/api/v2/")

begin
  client.orders.list
rescue Tremendous::Error => error
  puts error.class # => Tremendous:AccessError
  puts error.parsed_response # => {"errors"=>{"message"=>"The API key you provided was invalid. You provided: INVAL****OKEN.", "payload"=>{}}}
end
```

## `v5`

On `v4`, all errors raised by the lib are `Tremendous::ApiError`

```ruby
config = Tremendous::Configuration.new do |config|
  config.access_token = "INVALID_TOKEN"
end

begin
  client = Tremendous::TremendousApi.new(Tremendous::ApiClient.new(config))
rescue Tremendous::ApiError => error
  puts error.code # => 401
  puts error.response_headers
  puts error.response_body
end
```
