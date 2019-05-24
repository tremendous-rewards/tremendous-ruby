module Tremendous
  class Member

    def self.create!(data)
      Tremendous::Request.post(
        "members",
        body: data.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )[:member]
    end

    def self.list(filters={})
      Tremendous::Request.get(
        "members",
        query: filters,
        format: 'json'
      )[:members]
    end

    def self.show(id)
      Tremendous::Request.get("members/#{id}")[:member]
    end
  end
end
