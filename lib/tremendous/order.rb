module Tremendous
  class Order

    def self.create!(data={})
      data_to_post = data.merge(Tremendous.default_options)

      response = Tremendous::Request.post 'orders',
                                          body: data_to_post.to_json,
                                          headers: { 'Content-Type' => 'application/json' }

      response[:order]
    end

    def self.list(filters={})
      Tremendous::Request.get(
        'orders',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:orders]
    end

    def self.retrieve(id)
      response = Tremendous::Request.get "orders/#{id}",
                                         query: Tremendous.default_options,
                                         format: 'json'

      response[:order]
    end
  end
end
