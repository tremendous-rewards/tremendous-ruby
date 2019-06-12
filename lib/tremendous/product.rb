module Product
  def self.included(base)
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    def products
      ProductResource.new(access_token, uri)
    end
  end

  class ProductResource
    include Request

    def list(filters={})
      get(
        'products',
        query: filters,
        format: 'json'
      )[:products]
    end

    def show(id)
      get("products/#{id}")[:product]
    end
  end
end
