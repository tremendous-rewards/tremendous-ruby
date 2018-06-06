require 'jwt'

module Tremendous
  class Embed
    def self.tokenize(payload)
      JWT.encode(
        payload,
        Tremendous.config[:access_token],
        'HS256'
      )
    end
  end
end
