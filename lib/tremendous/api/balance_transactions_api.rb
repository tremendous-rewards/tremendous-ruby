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
  class BalanceTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List balance transactions
    # Fetch a list of all balance transactions on your account. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offsets the returned list by the given number of transactions. The returned transactions are ordered (and offsetted) by their creation date (DESC).
    # @option opts [Integer] :limit Limits the number of transactions listed. The default value is 10.
    # @option opts [String] :created_at_gte Only return results where the created_at field is greater than or equal to the supplied value. The string needs to be an ISO 8601 datetime.
    # @option opts [String] :created_at_lte Only return results where the created_at field is less than or equal to the supplied value. The string needs to be an ISO 8601 datetime.
    # @return [ListBalanceTransactions200Response]
    def list_balance_transactions(opts = {})
      data, _status_code, _headers = list_balance_transactions_with_http_info(opts)
      data
    end

    # List balance transactions
    # Fetch a list of all balance transactions on your account. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offsets the returned list by the given number of transactions. The returned transactions are ordered (and offsetted) by their creation date (DESC).
    # @option opts [Integer] :limit Limits the number of transactions listed. The default value is 10.
    # @option opts [String] :created_at_gte Only return results where the created_at field is greater than or equal to the supplied value. The string needs to be an ISO 8601 datetime.
    # @option opts [String] :created_at_lte Only return results where the created_at field is less than or equal to the supplied value. The string needs to be an ISO 8601 datetime.
    # @return [Array<(ListBalanceTransactions200Response, Integer, Hash)>] ListBalanceTransactions200Response data, response status code and response headers
    def list_balance_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BalanceTransactionsApi.list_balance_transactions ...'
      end
      # resource path
      local_var_path = '/balance_transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'created_at[gte]'] = opts[:'created_at_gte'] if !opts[:'created_at_gte'].nil?
      query_params[:'created_at[lte]'] = opts[:'created_at_lte'] if !opts[:'created_at_lte'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListBalanceTransactions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"BalanceTransactionsApi.list_balance_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BalanceTransactionsApi#list_balance_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
