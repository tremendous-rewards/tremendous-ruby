module Tremendous
  class Error < StandardError

    def initialize(response)
      @response = response
      super
    end

    def server_response
      @server_response ||= parsed_response
    end

    def parsed_response
      @response.parsed_response.with_indifferent_access
    rescue StandardError
      { errors: ['Internal Server Error'] }
    end

    def message
      "Code: #{@response.code}; Data: #{server_response[:errors]}"
    end
  end

  class BadDataError < Error
  end

  class PaymentError < Error
  end

  class AccessError < Error
  end
end
