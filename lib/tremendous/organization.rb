module Tremendous
  class Organization

    def self.create!(data)
      response = Tremendous::Request.post(
        'organizations',
        body: data.merge(Tremendous.default_options).to_json,
        headers: { 'Content-Type' => 'application/json' }
      )

      response[:organization]
    end

    def self.list
      Tremendous::Request.get(
        'organizations',
        query: Tremendous.default_options,
        format: 'json'
      )[:organizations]
    end
  end
end
