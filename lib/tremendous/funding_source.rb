module FundingSource
  include Request

  def self.included(base)
    base.send :include, InstanceMethods
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
        format: 'json'
      )[:funding_sources]
    end

    def show(id)
      get("funding_sources/#{id}")[:funding_source]
    end
  end
end
