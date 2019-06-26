module Tremendous
  module Campaign

    def self.included(base)
      base.send :include, InstanceMethods
    end

    module InstanceMethods
      def campaigns
        CampaignResource.new(access_token, uri)
      end
    end

    class CampaignResource
      include Request

      def list(filters={})
        get(
          'campaigns',
          query: filters,
          format: 'json'
        )[:campaigns]
      end

      def show(id)
        get("campaigns/#{id}")[:campaign]
      end
    end
  end
end
