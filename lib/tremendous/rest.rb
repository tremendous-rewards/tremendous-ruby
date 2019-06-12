module Tremendous

  class Rest

    include Campaign
    include FundingSource
    include Invoice
    include Member
    include Order
    include Organization
    include Product
    include Reward
    include Webhook

    attr_accessor :access_token, :uri

    def initialize(access_token, uri)
      @access_token = access_token
      @uri = uri
    end
  end
end
