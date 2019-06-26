module Tremendous
  module Reward

    def self.included(base)
      base.send :include, InstanceMethods
    end

    module InstanceMethods
      def rewards
        RewardResource.new(access_token, uri)
      end
    end

    class RewardResource
      include Request

      def list(filters={})
        get(
          'rewards',
          query: filters,
          format: 'json'
        )[:rewards]
      end

      def show(id)
        get("rewards/#{id}")[:reward]
      end
    end
  end
end
