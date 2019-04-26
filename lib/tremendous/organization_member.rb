module Tremendous
  class OrganizationMember

    def self.to_path(organization_id)
      "organizations/#{organization_id}/members"
    end

    def self.create!(organization_id, data)
      response = Tremendous::Request.post(
        to_path(organization_id),
        body: data.merge(Tremendous.default_options).to_json,
        headers: { 'Content-Type' => 'application/json' }
      )

      response[:member]
    end

    def self.list(organization_id)
      Tremendous::Request.get(
        to_path(organization_id),
        query: Tremendous.default_options,
        format: 'json'
      )[:members]
    end
  end
end
