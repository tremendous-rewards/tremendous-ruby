module Tremendous
  class Order

    attr_accessor :id, :external_id, :gifts, :payment, :sender

    def initialize(attributes)
      attributes = attributes.with_indifferent_access
      self.id = attributes[:id]
      self.external_id = attributes[:external_id]
      self.gifts = attributes[:gifts].map do |gift_attributes|
        Gift.new(gift_attributes)
      end

      self.payment = Tremendous::Payment.new(attributes[:payment])
      self.sender = Tremendous::User.new(attributes[:sender])
    end

    def self.create!(funding_source_id, gifts, external_id=nil, organization_id=nil)
      data_to_post = {
        funding_source_id: funding_source_id,
        external_id: external_id,
        organization_id: organization_id,
        gifts: gifts
      }.merge(Tremendous.default_options)

      response = Tremendous::Request.post 'orders',
                                          body: data_to_post.to_json,
                                          headers: { 'Content-Type' => 'application/json' }

      Tremendous::Order.new(response[:order])
    end

    def self.list(filters={})
      Tremendous::Request.get(
        'orders',
        query: filters.merge(Tremendous.default_options),
        format: 'json'
      )[:orders].map do |order_attributes|
        Tremendous::Order.new(order_attributes)
      end
    end

    def self.retrieve(id)
      response = Tremendous::Request.get "orders/#{id}",
                                         query: Tremendous.default_options,
                                         format: 'json'

      Tremendous::Order.new(response[:order])
    end
  end
end
