module Tremendous
  class Gift

    def self.list(filters={})
      response = Tremendous::Request.get(
        'gifts',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:gifts]
    end

    def self.retrieve(id)
      response = Tremendous::Request.get "gifts/#{id}",
                                         query: Tremendous.default_options,
                                         format: 'json'
      response[:gift]
    end
  end
end
