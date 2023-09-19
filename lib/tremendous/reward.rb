module Tremendous
  module Reward

    def self.included(base)
      base.include InstanceMethods
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
        )[:rewards]
      end

      def show(id)
        get("rewards/#{id}")[:reward]
      end

      def generate_link(id)
        post("rewards/#{id}/generate_link")[:reward]
      end
    end
  end
end
