module Tremendous
  class Campaign
    def self.list
      Tremendous::Request.get(
        'campaigns',
        query: Tremendous.default_options,
        format: 'json'
      )[:campaigns]
    end
  end
end
