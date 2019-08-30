module Tremendous
  class Error < StandardError

    def initialize(response)
      @response = response
      super
    end

    def server_response
      @server_response ||= @response.parsed_response.with_indifferent_access
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
