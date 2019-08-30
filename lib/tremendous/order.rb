module Tremendous
  module Order

    def self.included(base)
      base.send :include, InstanceMethods
    end

    module InstanceMethods
      def orders
        OrderResource.new(access_token, uri)
      end
    end

    class OrderResource
      include Request

      def create!(data={})
        post(
          'orders',
          body: data.to_json,
          headers: { 'Content-Type' => 'application/json' }
        )[:order]
      end

      def list(filters={})
        get(
          'orders',
          query: filters,
          format: 'json'
        )[:orders]
      end

      def show(id)
        get("orders/#{id}")[:order]
      end
    end
  end
end
