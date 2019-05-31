module Tremendous
  class Order

    def self.create!(data={})
      Tremendous::Request.post(
        'orders',
        body: data.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )[:order]
    end

    def self.list(filters={})
      Tremendous::Request.get(
        'orders',
        query: filters,
        format: 'json'
      )[:orders]
    end

    def self.show(id)
      Tremendous::Request.get("orders/#{id}")[:order]
    end
  end
end
