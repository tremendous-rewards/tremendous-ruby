module Tremendous
  class FundingSource

    attr_accessor :id, :method, :meta, :available_cents

    def initialize(attributes)
      attributes = attributes.with_indifferent_access
      self.id = attributes[:id]
      self.method = attributes[:method]
      self.available_cents = attributes[:meta]['available_cents']
      self.meta = attributes[:meta]
    end

    def self.list(filters={})
      Tremendous::Request.get(
        'funding_sources',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:funding_sources].map do |funding_souce_attributes|
        Tremendous::FundingSource.new(funding_souce_attributes)
      end
    end
  end
end
