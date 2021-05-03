module Tremendous
  module Webhook

    def self.included(base)
      base.include InstanceMethods
    end

    module InstanceMethods
      def webhooks
        WebhookResource.new(access_token, uri)
      end
    end

    class WebhookResource
      include Request

      def create!(url, data={})
        post(
          'webhooks',
          body: {url: url}.merge(data).to_json,
          headers: { 'Content-Type' => 'application/json' }
        )[:webhook]
      end

      def list
        get("webhooks")[:webhooks]
      end

      def show(id)
        get("webhooks/#{id}")[:webhook]
      end

      def delete!(id)
        delete("webhooks/#{id}")[:webhook]
      end

      def events(id)
        get("webhooks/#{id}/events")[:events]
      end

      def simulate!(id, event, data={})
        post(
          "webhooks/#{id}/simulate",
          body: {event: event}.merge(data).to_json,
          headers: { 'Content-Type' => 'application/json' }
        )
      end
    end
  end
end
