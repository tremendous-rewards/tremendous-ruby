=begin
#API Endpoints

#Deliver monetary rewards and incentives to employees, customers, survey participants, and more through the Tremendous API. For organizational tasks, like managing your organization and it's members within Tremendous, please see the Tremendous Organizational API.

The version of the OpenAPI document: 2
Contact: developers@tremendous.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module Tremendous
  # A single reward, sent to a recipient. A reward is always part of an order.  Either `products` or `campaign_id` must be specified. 
  class Reward
    # Tremendous ID of the reward
    attr_accessor :id

    # Tremendous ID of the order this reward is part of.
    attr_accessor :order_id

    # Date the reward was created
    attr_accessor :created_at

    # ID of the campaign in your account, that defines the available products (different gift cards, charity, etc.) that the recipient can choose from. 
    attr_accessor :campaign_id

    # List of IDs of product (different gift cards, charity, etc.) that will be available to the recipient to choose from.  Providing a `products` array will override the products made available by the campaign specified using the `campaign_id` property unless the `products` array is empty. It will _not_ override other campaign attributes, like the message and customization of the look and feel. 
    attr_accessor :products

    attr_accessor :value

    attr_accessor :recipient

    # Timestamp of reward delivery within the next year. Note that if date-time is provided, the time values will be ignored.
    attr_accessor :deliver_at

    attr_accessor :custom_fields

    attr_accessor :delivery

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'order_id' => :'order_id',
        :'created_at' => :'created_at',
        :'campaign_id' => :'campaign_id',
        :'products' => :'products',
        :'value' => :'value',
        :'recipient' => :'recipient',
        :'deliver_at' => :'deliver_at',
        :'custom_fields' => :'custom_fields',
        :'delivery' => :'delivery'
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
        :'order_id' => :'String',
        :'created_at' => :'Time',
        :'campaign_id' => :'String',
        :'products' => :'Array<String>',
        :'value' => :'ListRewards200ResponseRewardsInnerValue',
        :'recipient' => :'ListRewards200ResponseRewardsInnerRecipient',
        :'deliver_at' => :'Date',
        :'custom_fields' => :'Array<RewardBaseCustomFieldsInner>',
        :'delivery' => :'RewardWithoutLinkDelivery'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'campaign_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Tremendous::Reward` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Tremendous::Reward`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'products')
        if (value = attributes[:'products']).is_a?(Array)
          self.products = value
        end
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'deliver_at')
        self.deliver_at = attributes[:'deliver_at']
      end

      if attributes.key?(:'custom_fields')
        if (value = attributes[:'custom_fields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.key?(:'delivery')
        self.delivery = attributes[:'delivery']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if !@id.nil? && @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if !@order_id.nil? && @order_id !~ pattern
        invalid_properties.push("invalid value for \"order_id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if !@campaign_id.nil? && @campaign_id !~ pattern
        invalid_properties.push("invalid value for \"campaign_id\", must conform to the pattern #{pattern}.")
      end

      if !@products.nil? && @products.length < 1
        invalid_properties.push('invalid value for "products", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@id.nil? && @id !~ Regexp.new(/[A-Z0-9]{4,20}/)
      return false if !@order_id.nil? && @order_id !~ Regexp.new(/[A-Z0-9]{4,20}/)
      return false if !@campaign_id.nil? && @campaign_id !~ Regexp.new(/[A-Z0-9]{4,20}/)
      return false if !@products.nil? && @products.length < 1
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
    # @param [Object] order_id Value to be assigned
    def order_id=(order_id)
      if order_id.nil?
        fail ArgumentError, 'order_id cannot be nil'
      end

      pattern = Regexp.new(/[A-Z0-9]{4,20}/)
      if order_id !~ pattern
        fail ArgumentError, "invalid value for \"order_id\", must conform to the pattern #{pattern}."
      end

      @order_id = order_id
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

    # Custom attribute writer method with validation
    # @param [Object] products Value to be assigned
    def products=(products)
      if products.nil?
        fail ArgumentError, 'products cannot be nil'
      end

      if products.length < 1
        fail ArgumentError, 'invalid value for "products", number of items must be greater than or equal to 1.'
      end

      @products = products
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          order_id == o.order_id &&
          created_at == o.created_at &&
          campaign_id == o.campaign_id &&
          products == o.products &&
          value == o.value &&
          recipient == o.recipient &&
          deliver_at == o.deliver_at &&
          custom_fields == o.custom_fields &&
          delivery == o.delivery
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, order_id, created_at, campaign_id, products, value, recipient, deliver_at, custom_fields, delivery].hash
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
