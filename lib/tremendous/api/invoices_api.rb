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
  class InvoicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create invoice
    # Creating an invoice is the way for your organization to fund your account's balance.  1. Create an invoice 2. Pay the invoice 3. Funds get added to your account's balance  ## Request body  <div class=\"object-schema-request-schema\">   <table>   <thead>     <tr>       <th>Property</th>       <th>Type</th>       <th>Description</th>     </tr>   </thead>   <tbody class=\"object-schema-table-body\">     <tr class=\"\"><td><div class=\"property-name\">   <code class=\"property-name\">po_number</code> </div> </td><td><span class=\"property-type\">string</span></td><td><p>Reference to the purchase order number within your organization</p> </td></tr> <tr class=\"\"><td><div class=\"property-name\">   <code class=\"property-name\">amount</code> </div> </td><td><span class=\"property-type\">number</span> <span class=\"property-format\">double</span></td><td><p>Amount of the invoice in USD</p> </td></tr> <tr class=\"\"><td><div class=\"property-name\">   <code class=\"property-name\">memo</code> </div> </td><td><span class=\"property-type\">string</span></td><td><p>A note to be included in the invoice. This is for your internal use and will not be visible to the recipient.</p> </td></tr>   </tbody> </table>  </div>  
    # @param create_invoice_request [CreateInvoiceRequest] Invoice details
    # @param [Hash] opts the optional parameters
    # @return [CreateInvoice200Response]
    def create_invoice(create_invoice_request, opts = {})
      data, _status_code, _headers = create_invoice_with_http_info(create_invoice_request, opts)
      data
    end

    # Create invoice
    # Creating an invoice is the way for your organization to fund your account&#39;s balance.  1. Create an invoice 2. Pay the invoice 3. Funds get added to your account&#39;s balance  ## Request body  &lt;div class&#x3D;\&quot;object-schema-request-schema\&quot;&gt;   &lt;table&gt;   &lt;thead&gt;     &lt;tr&gt;       &lt;th&gt;Property&lt;/th&gt;       &lt;th&gt;Type&lt;/th&gt;       &lt;th&gt;Description&lt;/th&gt;     &lt;/tr&gt;   &lt;/thead&gt;   &lt;tbody class&#x3D;\&quot;object-schema-table-body\&quot;&gt;     &lt;tr class&#x3D;\&quot;\&quot;&gt;&lt;td&gt;&lt;div class&#x3D;\&quot;property-name\&quot;&gt;   &lt;code class&#x3D;\&quot;property-name\&quot;&gt;po_number&lt;/code&gt; &lt;/div&gt; &lt;/td&gt;&lt;td&gt;&lt;span class&#x3D;\&quot;property-type\&quot;&gt;string&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;Reference to the purchase order number within your organization&lt;/p&gt; &lt;/td&gt;&lt;/tr&gt; &lt;tr class&#x3D;\&quot;\&quot;&gt;&lt;td&gt;&lt;div class&#x3D;\&quot;property-name\&quot;&gt;   &lt;code class&#x3D;\&quot;property-name\&quot;&gt;amount&lt;/code&gt; &lt;/div&gt; &lt;/td&gt;&lt;td&gt;&lt;span class&#x3D;\&quot;property-type\&quot;&gt;number&lt;/span&gt; &lt;span class&#x3D;\&quot;property-format\&quot;&gt;double&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;Amount of the invoice in USD&lt;/p&gt; &lt;/td&gt;&lt;/tr&gt; &lt;tr class&#x3D;\&quot;\&quot;&gt;&lt;td&gt;&lt;div class&#x3D;\&quot;property-name\&quot;&gt;   &lt;code class&#x3D;\&quot;property-name\&quot;&gt;memo&lt;/code&gt; &lt;/div&gt; &lt;/td&gt;&lt;td&gt;&lt;span class&#x3D;\&quot;property-type\&quot;&gt;string&lt;/span&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;A note to be included in the invoice. This is for your internal use and will not be visible to the recipient.&lt;/p&gt; &lt;/td&gt;&lt;/tr&gt;   &lt;/tbody&gt; &lt;/table&gt;  &lt;/div&gt;  
    # @param create_invoice_request [CreateInvoiceRequest] Invoice details
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateInvoice200Response, Integer, Hash)>] CreateInvoice200Response data, response status code and response headers
    def create_invoice_with_http_info(create_invoice_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.create_invoice ...'
      end
      # verify the required parameter 'create_invoice_request' is set
      if @api_client.config.client_side_validation && create_invoice_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_invoice_request' when calling InvoicesApi.create_invoice"
      end
      # resource path
      local_var_path = '/invoices'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_invoice_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateInvoice200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"InvoicesApi.create_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#create_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete invoice
    # Removes an invoice. This has no further consequences but is a rather cosmetic operation. 
    # @param id [String] ID of the invoice that should be retrieved
    # @param [Hash] opts the optional parameters
    # @return [CreateInvoice200Response]
    def delete_invoices(id, opts = {})
      data, _status_code, _headers = delete_invoices_with_http_info(id, opts)
      data
    end

    # Delete invoice
    # Removes an invoice. This has no further consequences but is a rather cosmetic operation. 
    # @param id [String] ID of the invoice that should be retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateInvoice200Response, Integer, Hash)>] CreateInvoice200Response data, response status code and response headers
    def delete_invoices_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.delete_invoices ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicesApi.delete_invoices"
      end
      # resource path
      local_var_path = '/invoices/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateInvoice200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"InvoicesApi.delete_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#delete_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve invoice as CSV
    # Generates a CSV version for an invoice listing the associated rewards and orders 
    # @param id [String] ID of the Invoice for that the CSV should be generated
    # @param [Hash] opts the optional parameters
    # @return [String]
    def download_invoice_csv(id, opts = {})
      data, _status_code, _headers = download_invoice_csv_with_http_info(id, opts)
      data
    end

    # Retrieve invoice as CSV
    # Generates a CSV version for an invoice listing the associated rewards and orders 
    # @param id [String] ID of the Invoice for that the CSV should be generated
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def download_invoice_csv_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.download_invoice_csv ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicesApi.download_invoice_csv"
      end
      # resource path
      local_var_path = '/invoices/{id}/csv'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"InvoicesApi.download_invoice_csv",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#download_invoice_csv\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve invoice as PDF
    # Generates a PDF version for an invoice 
    # @param id [String] ID of the Invoice for that the PDF should be generated
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_invoice_pdf(id, opts = {})
      data, _status_code, _headers = download_invoice_pdf_with_http_info(id, opts)
      data
    end

    # Retrieve invoice as PDF
    # Generates a PDF version for an invoice 
    # @param id [String] ID of the Invoice for that the PDF should be generated
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_invoice_pdf_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.download_invoice_pdf ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicesApi.download_invoice_pdf"
      end
      # resource path
      local_var_path = '/invoices/{id}/pdf'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"InvoicesApi.download_invoice_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#download_invoice_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve invoice
    # Retrieve an invoice, identified by the given `id` in the URL  > 📘 Deleted Invoices > > This endpoint can be used to retrieve details on deleted invoices > that the list of invoices omits. 
    # @param id [String] ID of the invoice that should be retrieved
    # @param [Hash] opts the optional parameters
    # @return [CreateInvoice200Response]
    def get_invoice(id, opts = {})
      data, _status_code, _headers = get_invoice_with_http_info(id, opts)
      data
    end

    # Retrieve invoice
    # Retrieve an invoice, identified by the given &#x60;id&#x60; in the URL  &gt; 📘 Deleted Invoices &gt; &gt; This endpoint can be used to retrieve details on deleted invoices &gt; that the list of invoices omits. 
    # @param id [String] ID of the invoice that should be retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateInvoice200Response, Integer, Hash)>] CreateInvoice200Response data, response status code and response headers
    def get_invoice_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.get_invoice ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicesApi.get_invoice"
      end
      # resource path
      local_var_path = '/invoices/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateInvoice200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"InvoicesApi.get_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#get_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List invoices
    # Fetch a list of all invoices on your account.  > 🚧 Deleted invoices are omitted > > The response does not include any previously deleted invoices. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offsets the returned list by the given number of invoices. The returned invoices are ordered (and offsetted) by their creation date (DESC).
    # @option opts [Integer] :limit Limits the number of invoices listed. The maximum and default value is 10.
    # @return [ListInvoices200Response]
    def list_invoices(opts = {})
      data, _status_code, _headers = list_invoices_with_http_info(opts)
      data
    end

    # List invoices
    # Fetch a list of all invoices on your account.  &gt; 🚧 Deleted invoices are omitted &gt; &gt; The response does not include any previously deleted invoices. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Offsets the returned list by the given number of invoices. The returned invoices are ordered (and offsetted) by their creation date (DESC).
    # @option opts [Integer] :limit Limits the number of invoices listed. The maximum and default value is 10.
    # @return [Array<(ListInvoices200Response, Integer, Hash)>] ListInvoices200Response data, response status code and response headers
    def list_invoices_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoicesApi.list_invoices ...'
      end
      # resource path
      local_var_path = '/invoices'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListInvoices200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['BearerApiKey']

      new_options = opts.merge(
        :operation => :"InvoicesApi.list_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicesApi#list_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
