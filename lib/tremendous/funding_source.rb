module Tremendous
  module FundingSource

    def self.included(base)
      base.include InstanceMethods
    end

    module InstanceMethods
      def funding_sources
        FundingSourceResource.new(access_token, uri)
      end
    end

    class FundingSourceResource
      include Request

      def list(filters={})
        get(
          'funding_sources',
          query: filters,
        )[:funding_sources]
      end

      def show(id)
        get("funding_sources/#{id}")[:funding_source]
      end
    end
  end
end
