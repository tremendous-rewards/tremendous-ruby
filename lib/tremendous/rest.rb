module Tremendous
  class Rest
    include Tremendous::Campaign
    include Tremendous::FundingSource
    include Tremendous::Invoice
    include Tremendous::Member
    include Tremendous::Order
    include Tremendous::Organization
    include Tremendous::Product
    include Tremendous::Reward
    include Tremendous::Webhook

    attr_accessor :access_token, :uri

    def initialize(access_token, uri)
      @access_token = access_token
      @uri = uri
    end
  end
end
