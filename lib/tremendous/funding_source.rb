module Tremendous
  class FundingSource

    def self.list(filters={})
      Tremendous::Request.get(
        'funding_sources',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:funding_sources]
    end
  end
end
