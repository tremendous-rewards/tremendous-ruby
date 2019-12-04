module Tremendous
  module Member

    def self.included(base)
      base.include InstanceMethods
    end

    module InstanceMethods
      def members
        MemberResource.new(access_token, uri)
      end
    end

    class MemberResource
      include Request

      def create!(data)
        post(
          "members",
          body: data.to_json,
          headers: { 'Content-Type' => 'application/json' }
        )[:member]
      end

      def list(filters={})
        get(
          "members",
          query: filters,
        )[:members]
      end

      def show(id)
        get("members/#{id}")[:member]
      end
    end
  end
end
