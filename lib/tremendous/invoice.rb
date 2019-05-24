module Tremendous
  class Invoice

    def self.create!(data={})
      Tremendous::Request.post(
        'invoices',
        {
          body: data.to_json,
          headers: { 'Content-Type' => 'application/json' }
        }
      )[:invoice]
    end

    def self.list(filters={})
      Tremendous::Request.get(
        'invoices',
          query: filters,
          format: 'json'
      )[:invoices]
    end

    def self.show(id)
      Tremendous::Request.get(
        "invoices/#{id}",
          format: 'json'
      )[:invoice]
    end

    def self.delete(id)
      Tremendous::Request.delete(
        "invoices/#{id}",
        format: 'json'
      )[:invoice]
    end
  end
end
