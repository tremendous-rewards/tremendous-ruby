module Tremendous
  class Webhook
    def self.create!(url, data={})
      Tremendous::Request.post(
        'webhooks',
        body: {url: url}.merge(data).to_json,
        headers: { 'Content-Type' => 'application/json' }
      )[:webhook]
    end

    def self.events(id)
      Tremendous::Request.get("webhooks/#{id}/events")[:events]
    end

    def self.retrieve(id)
      response = Tremendous::Request.get("webhooks/#{id}")[:webhook]
    end

    def self.simulate!(id, event, data={})
      Tremendous::Request.post(
        "webhooks/#{id}/simulate",
        body: {event: event}.merge(data).to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
    end
  end
end
