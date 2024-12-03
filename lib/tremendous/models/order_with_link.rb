=begin
#API Endpoints

#Deliver monetary rewards and incentives to employees, customers, survey participants, and more through the Tremendous API. For organizational tasks, like managing your organization and its members within Tremendous, please see the Tremendous Organizational API.

The version of the OpenAPI document: 2
Contact: developers@tremendous.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module Tremendous
  # An order wraps around the fulfilment of one or more rewards.
  class OrderWithLink
    # Tremendous ID of the order
    attr_accessor :id

    # Reference for this order, supplied by the customer.  When set, `external_id` makes order idempotent. All requests that use the same `external_id` after the initial order creation, will result in a response that returns the data of the initially created order. The response will have a `201` response code. These responses **fail** to create any further orders.  It also allows for retrieving by `external_id` instead of `id` only. 
    attr_accessor :external_id

    # ID of the campaign in your account, that defines the available products (different gift cards, charity, etc.) that the recipient can choose from. 
    attr_accessor :campaign_id

    # Date the order has been created
    attr_accessor :created_at

    # Execution status of a given order  <table>   <thead>     <tr>       <th>         Status       </th>       <th>         Description       </th>     </tr>   </thead>   <tbody>     <tr>       <td>         <code>           CANCELED         </code>       </td>       <td>         The order and all of its rewards were canceled.       </td>     </tr>     <tr>       <td>         <code>           CART         </code>       </td>       <td>         The order has been created, but hasn't yet been processed.       </td>     </tr>     <tr>       <td>         <code>           EXECUTED         </code>       </td>       <td>         The order has been executed. Payment has been handled and rewards are being delivered (if applicable).       </td>     </tr>     <tr>       <td>         <code>           FAILED         </code>       </td>       <td>         The order could not be processed due to an error. E.g. due to insufficient funds in the account.       </td>     </tr>     <tr>       <td>         <code>           PENDING APPROVAL         </code>       </td>       <td>         The order has been created but needs approval to be executed.       </td>     </tr>     <tr>       <td>         <code>           PENDING INTERNAL PAYMENT APPROVAL         </code>       </td>       <td>         The order has been created but it is under review and requires approval from our team.       </td>     </tr>    </tbody> </table> 
    attr_accessor :status

    # Name of the channel in which the order was created
    attr_accessor :channel

    attr_accessor :payment

    # The ID for the invoice associated with this order
    attr_accessor :invoice_id

    attr_accessor :rewards

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'external_id' => :'external_id',
        :'campaign_id' => :'campaign_id',
        :'created_at' => :'created_at',
        :'status' => :'status',
        :'channel' => :'channel',
        :'payment' => :'payment',
        :'invoice_id' => :'invoice_id',
        :'rewards' => :'rewards'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'external_id' => :'String',
        :'campaign_id' => :'String',
        :'created_at' => :'Time',
        :'status' => :'String',
        :'channel' => :'String',
        :'payment' => :'OrderBasePayment',
        :'invoice_id' => :'String',
        :'rewards' => :'Array<OrderWithLinkRewardsInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_id',
        :'campaign_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Tremendous::OrderWithLink` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Tremendous::OrderWithLink`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'channel')
        self.channel = attributes[:'channel']
      end

      if attributes.key?(:'payment')
        self.payment = attributes[:'payment']
      end

      if attributes.key?(:'invoice_id')
        self.invoice_id = attributes[:'invoice_id']
      end

      if attributes.key?(:'rewards')
        if (value = attributes[:'rewards']).is_a?(Array)
          self.rewards = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if !@campaign_id.nil? && @campaign_id !~ pattern
        invalid_properties.push("invalid value for \"campaign_id\", must conform to the pattern #{pattern}.")
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @id !~ Regexp.new(/[A-Z0-9]{4,20}/)
      return false if !@campaign_id.nil? && @campaign_id !~ Regexp.new(/[A-Z0-9]{4,20}/)
      return false if @created_at.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["CANCELED", "CART", "EXECUTED", "FAILED", "PENDING APPROVAL", "PENDING INTERNAL PAYMENT APPROVAL"])
      return false unless status_validator.valid?(@status)
      channel_validator = EnumAttributeValidator.new('String', ["UI", "API", "EMBED", "DECIPHER", "QUALTRICS", "TYPEFORM", "SURVEY MONKEY"])
      return false unless channel_validator.valid?(@channel)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] campaign_id Value to be assigned
    def campaign_id=(campaign_id)
      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if !campaign_id.nil? && campaign_id !~ pattern
        fail ArgumentError, "invalid value for \"campaign_id\", must conform to the pattern #{pattern}."
      end

      @campaign_id = campaign_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["CANCELED", "CART", "EXECUTED", "FAILED", "PENDING APPROVAL", "PENDING INTERNAL PAYMENT APPROVAL"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] channel Object to be assigned
    def channel=(channel)
      validator = EnumAttributeValidator.new('String', ["UI", "API", "EMBED", "DECIPHER", "QUALTRICS", "TYPEFORM", "SURVEY MONKEY"])
      unless validator.valid?(channel)
        fail ArgumentError, "invalid value for \"channel\", must be one of #{validator.allowable_values}."
      end
      @channel = channel
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          external_id == o.external_id &&
          campaign_id == o.campaign_id &&
          created_at == o.created_at &&
          status == o.status &&
          channel == o.channel &&
          payment == o.payment &&
          invoice_id == o.invoice_id &&
          rewards == o.rewards
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, external_id, campaign_id, created_at, status, channel, payment, invoice_id, rewards].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Tremendous.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
