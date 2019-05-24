module Tremendous
  class Error < StandardError

    def initialize(response)
      @response = response
      super
    end

    def message
      response_json = JSON.parse(@response.body).with_indifferent_access
      errors = response_json[:errors]
      "Code: #{@response.code}; Data: #{errors}"
    end
  end

  class BadDataError < Error
  end

  class PaymentError < Error
  end

  class AccessError < Error
  end
end
