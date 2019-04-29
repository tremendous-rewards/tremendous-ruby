module Tremendous
  class Invoice

    def self.create!(data={})
      data_to_post = data.merge(Tremendous.default_options)

      response = Tremendous::Request.post(
        'invoices',
        {
          body: data_to_post.to_json,
          headers: { 'Content-Type' => 'application/json' }
        }
      )[:invoice]

    end

    def self.list(filters={})
      Tremendous::Request.get(
        'invoices',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:invoices]
    end

    def self.delete(id)
      Tremendous::Request.delete(
        "invoices/#{id}",
          query: Tremendous.default_options,
          format: 'json'
      )[:invoice]
    end

    def self.render(id)
      Tremendous::Request.get(
        "invoices/#{id}",
          query: Tremendous.default_options,
          format: 'json'
      )[:invoice]
    end

  end
end
