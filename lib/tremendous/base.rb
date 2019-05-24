module Tremendous
  @@config = {
    base_api_uri: 'https://www.tremendous.com/api/v1/'
  }

  def self.config
    @@config
  end

  def self.configure
    yield @@config
  end

  # Access token
  def self.default_options
    {
      access_token: @@config[:access_token]
    }
  end
end
