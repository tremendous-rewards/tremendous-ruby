=begin
#API Endpoints

#Deliver monetary rewards and incentives to employees, customers, survey participants, and more through the Tremendous API. For organizational tasks, like managing your organization and it's members within Tremendous, please see the Tremendous Organizational API.

The version of the OpenAPI document: 2
Contact: developers@tremendous.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0-SNAPSHOT

=end

require 'cgi'

module Tremendous
  class RewardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate a reward URL
    # Generate a redemption link for the reward identified by the `id` in the URL 
    # @param id [String] ID of the reward
    # @param [Hash] opts the optional parameters
    # @return [GenerateRewardLink200Response]
    def generate_reward_link(id, opts = {})
      data, _status_code, _headers = generate_reward_link_with_http_info(id, opts)
      data
    end

    # Generate a reward URL
    # Generate a redemption link for the reward identified by the &#x60;id&#x60; in the URL 
    # @param id [String] ID of the reward
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateRewardLink200Response, Integer, Hash)>] GenerateRewardLink200Response data, response status code and response headers
    def generate_reward_link_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.generate_reward_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RewardsApi.generate_reward_link"
      end
      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling RewardsApi.generate_reward_link, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/rewards/{id}/generate_link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateRewardLink200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"RewardsApi.generate_reward_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#generate_reward_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate a reward token
    # Generate a temporary reward token identified by the `id` in the URL. These tokens are needed to render a reward when using [Tremendous Embed](https://github.com/tremendous-rewards/embed/blob/master/docs/documentation.md). The token is valid for 24 hours. 
    # @param id [String] ID of the reward
    # @param [Hash] opts the optional parameters
    # @return [GenerateRewardToken200Response]
    def generate_reward_token(id, opts = {})
      data, _status_code, _headers = generate_reward_token_with_http_info(id, opts)
      data
    end

    # Generate a reward token
    # Generate a temporary reward token identified by the &#x60;id&#x60; in the URL. These tokens are needed to render a reward when using [Tremendous Embed](https://github.com/tremendous-rewards/embed/blob/master/docs/documentation.md). The token is valid for 24 hours. 
    # @param id [String] ID of the reward
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateRewardToken200Response, Integer, Hash)>] GenerateRewardToken200Response data, response status code and response headers
    def generate_reward_token_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.generate_reward_token ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RewardsApi.generate_reward_token"
      end
      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling RewardsApi.generate_reward_token, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/rewards/{id}/generate_embed_token'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateRewardToken200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"RewardsApi.generate_reward_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#generate_reward_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve single reward
    # Retrieve the reward, identified by the given `id` in the URL 
    # @param id [String] ID of the reward that should be retrieved
    # @param [Hash] opts the optional parameters
    # @return [GetReward200Response]
    def get_reward(id, opts = {})
      data, _status_code, _headers = get_reward_with_http_info(id, opts)
      data
    end

    # Retrieve single reward
    # Retrieve the reward, identified by the given &#x60;id&#x60; in the URL 
    # @param id [String] ID of the reward that should be retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetReward200Response, Integer, Hash)>] GetReward200Response data, response status code and response headers
    def get_reward_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.get_reward ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RewardsApi.get_reward"
      end
      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling RewardsApi.get_reward, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/rewards/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetReward200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"RewardsApi.get_reward",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#get_reward\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List rewards
    # Retrieve a list of all created rewards 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offsets the returned list by the given number of rewards. The returned rewards are ordered (and offsetted) by their creation date (DESC).
    # @return [ListRewards200Response]
    def list_rewards(opts = {})
      data, _status_code, _headers = list_rewards_with_http_info(opts)
      data
    end

    # List rewards
    # Retrieve a list of all created rewards 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offsets the returned list by the given number of rewards. The returned rewards are ordered (and offsetted) by their creation date (DESC).
    # @return [Array<(ListRewards200Response, Integer, Hash)>] ListRewards200Response data, response status code and response headers
    def list_rewards_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.list_rewards ...'
      end
      # resource path
      local_var_path = '/rewards'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListRewards200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"RewardsApi.list_rewards",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#list_rewards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend reward
    # Resends a reward, identified by the given `id` in the URL, to its recipient. 
    # @param id [String] ID of the reward that should be resent
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def resend_reward(id, opts = {})
      data, _status_code, _headers = resend_reward_with_http_info(id, opts)
      data
    end

    # Resend reward
    # Resends a reward, identified by the given &#x60;id&#x60; in the URL, to its recipient. 
    # @param id [String] ID of the reward that should be resent
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def resend_reward_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RewardsApi.resend_reward ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RewardsApi.resend_reward"
      end
      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling RewardsApi.resend_reward, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/rewards/{id}/resend'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"RewardsApi.resend_reward",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RewardsApi#resend_reward\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
