module Tremendous
  class Product
    def self.list(filters={})
      Tremendous::Request.get(
        'products',
        query: filters,
        format: 'json'
      )[:products]
    end

    def self.show(id)
      Tremendous::Request.get("products/#{id}")[:product]
    end
  end
end
