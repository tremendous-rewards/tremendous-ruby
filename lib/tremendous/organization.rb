module Tremendous
  class Organization
    def self.create!(data)
      Tremendous::Request.post(
        'organizations',
        body: data.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )[:organization]
    end

    def self.list(filters={})
      Tremendous::Request.get(
        'organizations',
        query: filters
      )[:organizations]
    end

    def self.create_access_token!(id, data={})
      Tremendous::Request.post(
        "organizations/#{id}/access_token",
        body: data.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )[:access_token]
    end
  end
end
