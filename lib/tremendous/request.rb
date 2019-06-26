module Tremendous
  module Request

    def initialize(access_token, uri)
      @access_token = access_token
      @uri = uri
    end

    def access_token
      @access_token
    end

    def uri
      @uri
    end

    def get(path, data={}, *opts)
      handle_response(_execute(:get, url(path), data, *opts))
    end

    def post(path, data={}, *opts)
      handle_response(_execute(:post, url(path), data, *opts))
    end

    def put(path, data={}, *opts)
      handle_response(_execute(:put, url(path), data, *opts))
    end

    def delete(path, data={}, *opts)
      handle_response(_execute(:delete, url(path), data, *opts))
    end

    def _execute(method, url, data={}, *opts)
      data[:headers] = {
        'authorization' => "Bearer #{@access_token}"
      }.merge(data.class == Hash ? data[:headers] || {} : {})

      HTTParty.send(method, url, data, *opts)
    end

    def url(path, params={})
      URI.join(uri, path)
    end

    def handle_response(response)
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
