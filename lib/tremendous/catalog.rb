module Tremendous
  class Catalog
    attr_accessor :id, :name, :data, :raw

    def initialize(attributes)
      attributes = attributes.with_indifferent_access
      self.id = attributes[:id]
      self.name = attributes[:name]
      self.raw = attributes
    end

    def self.list(filters = {})
      Tremendous::Request.get(
        'catalog',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:catalog].map do |item|
        Tremendous::Catalog.new(item)
      end
    end
  end
end
