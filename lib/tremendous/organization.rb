module Organization

  def self.included(base)
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    def organizations
      OrganizationResource.new(access_token, uri)
    end
  end

  class OrganizationResource
    include Request

    def create!(data)
      post(
        'organizations',
        body: data.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )[:organization]
    end

    def list(filters={})
      get('organizations', query: filters)[:organizations]
    end

    def create_access_token!(id, data={})
      post(
        "organizations/#{id}/access_token",
        body: data.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )[:access_token]
    end
  end
end
