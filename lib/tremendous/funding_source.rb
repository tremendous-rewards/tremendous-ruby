module Tremendous
  class FundingSource

    def self.list(filters={})
      Tremendous::Request.get(
        'funding_sources',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:funding_sources]
    end

    def self.show(id)
      Tremendous::Request.get(
        "funding_sources/#{id}",
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:funding_source]
    end
  end
end
