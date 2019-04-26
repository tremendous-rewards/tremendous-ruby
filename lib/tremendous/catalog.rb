module Tremendous
  class Catalog
    def self.list(filters={})
      Tremendous::Request.get(
        'catalog',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:catalog]
    end
  end
end
