module Tremendous
  class Payment

    attr_accessor :amount, :fees, :total, :funding_source_id

    def initialize(attributes)
      self.amount = attributes[:amount]
      self.fees = attributes[:fees]
      self.total = attributes[:total]
      self.funding_source_id = attributes[:funding_source_id]
    end

  end
end
