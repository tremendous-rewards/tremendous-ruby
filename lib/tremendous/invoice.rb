module Tremendous
  module Invoice

    def self.included(base)
      base.include InstanceMethods
    end

    module InstanceMethods
      def invoices
        InvoiceResource.new(access_token, uri)
      end
    end

    class InvoiceResource
      include Request

      def create!(data={})
        post(
          'invoices',
          {
            body: data.to_json,
            headers: { 'Content-Type' => 'application/json' }
          }
        )[:invoice]
      end

      def list(filters={})
        get(
          'invoices',
          query: filters,
        )[:invoices]
      end

      def show(id)
        get("invoices/#{id}")[:invoice]
      end

      def delete!(id)
        delete("invoices/#{id}")[:invoice]
      end

    end
  end
end
