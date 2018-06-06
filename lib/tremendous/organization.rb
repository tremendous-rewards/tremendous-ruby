module Tremendous
  class Organization

    attr_accessor :id, :name, :website, :phone, :created_at, :config

    def initialize(attributes)
      attributes = attributes.with_indifferent_access
      self.id = attributes[:id]
      self.name = attributes[:name]
      self.website = attributes[:website]
      self.phone = attributes[:phone]
      self.config = attributes[:config]
      self.created_at = attributes[:created_at]
    end

    def self.create!(data)
      response = Tremendous::Request.post(
        'organizations',
        body: data.merge(Tremendous.default_options).to_json,
        headers: { 'Content-Type' => 'application/json' }
      )

      Tremendous::Organization.new(response[:organization])
    end

    def self.list
      Tremendous::Request.get(
        'organizations',
        query: Tremendous.default_options,
        format: 'json'
      )[:organizations].map do |org|
        Tremendous::Organization.new(org)
      end
    end
  end
end
