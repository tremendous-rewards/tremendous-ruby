require 'jwt'

module Tremendous
  class Embed
    def self.tokenize(access_token, payload)
      JWT.encode(
        payload,
        access_token,
        'HS256'
      )
    end
  end
end
