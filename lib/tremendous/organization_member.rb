module Tremendous
  class OrganizationMember
    attr_accessor :id, :name, :email, :role, :invite_url

    def initialize(attributes)
      attributes = attributes.with_indifferent_access
      self.id = attributes[:id]
      self.name = attributes[:name]
      self.email = attributes[:email]
      self.role = attributes[:role]
      self.invite_url = attributes[:invite_url]
    end

    def self.to_path(organization_id)
      "organizations/#{organization_id}/members"
    end

    def self.create!(organization_id, data)
      response = Tremendous::Request.post(
        to_path(organization_id),
        body: data.merge(Tremendous.default_options).to_json,
        headers: { 'Content-Type' => 'application/json' }
      )

      Tremendous::OrganizationMember.new(response[:member])
    end

    def self.list(organization_id)
      Tremendous::Request.get(
        to_path(organization_id),
        query: Tremendous.default_options,
        format: 'json'
      )[:members].map do |member|
        Tremendous::OrganizationMember.new(member)
      end
    end
  end
end
