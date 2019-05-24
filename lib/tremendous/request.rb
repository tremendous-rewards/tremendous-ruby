module Tremendous
  class Request
    def self.get(path, data={}, *opts)
      handle_response(_execute(:get, url(path), data, *opts))
    end

    def self.post(path, data={}, *opts)
      handle_response(_execute(:post, url(path), data, *opts))
    end

    def self.put(path, data={}, *opts)
      handle_response(_execute(:put, url(path), data, *opts))
    end

    def self.delete(path, data={}, *opts)
      handle_response(_execute(:delete, url(path), data, *opts))
    end

    def self._execute(method, url, data={}, *opts)
      data[:headers] = {
        'authorization' => "Bearer #{Tremendous.default_options[:access_token]}"
      }.merge(data.class == Hash ? data[:headers] || {} : {})

      HTTParty.send(method, url, data, *opts)
    end

    def self.url(path, params={})
      url = URI.join(Tremendous.config[:base_api_uri], path)
    end

    def self.handle_response(response)
      if response.success?
        response_json = JSON.parse(response.body).with_indifferent_access
      else
        case response.code
        when 400
          raise Tremendous::BadDataError.new(response)
        when 401
          raise Tremendous::AccessError.new(response)
        when 402
          raise Tremendous::PaymentError.new(response)
        else
          raise Tremendous::Error.new(response)
        end
      end
    end
  end
end
