module Tremendous
  class Style

    attr_accessor :id, :card

    def initialize(attributes)
      attributes = attributes.with_indifferent_access
      self.id = attributes[:id]
      self.card = attributes[:card]
    end

    def url
      card && card[:url]
    end

    def self.list(filters={})
      options = filters.merge(Tremendous.default_options)
      response = Tremendous::Request.get 'styles',
                                     query: options,
                                     format: 'json'

      response[:styles].map do |style_attributes|
        Tremendous::Style.new(style_attributes)
      end
    end
  end
end
