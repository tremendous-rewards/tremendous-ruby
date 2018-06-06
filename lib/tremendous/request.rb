module Tremendous
  class Request
    def self.get(path, *opts)
      handle_response(HTTParty.get(url(path), *opts))
    end
    def self.post(path, *opts)
      handle_response(HTTParty.post(url(path), *opts))
    end
    def self.put(path, *opts)
      handle_response(HTTParty.put(url(path), *opts))
    end
    def self.delete(path, *opts)
      handle_response(HTTParty.delete(url(path), *opts))
    end
    def self.url(path, params={})
      url = URI.join(Tremendous.config[:base_api_uri], path)
    end

    def self.handle_response(response)
      if response.success?
        response_json = JSON.parse(response.body).with_indifferent_access
      else
        raise Tremendous::Error.new(response)
      end
    end
  end
end
