=begin
#API Endpoints

#Deliver monetary rewards and incentives to employees, customers, survey participants, and more through the Tremendous API. For organizational tasks, like managing your organization and it's members within Tremendous, please see the Tremendous Organizational API.

The version of the OpenAPI document: 2
Contact: developers@tremendous.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module Tremendous
  # The fraud review associated with a reward.
  class FraudReview
    # The current status of the fraud review:  * `flagged` - The reward has been flagged for and waiting manual review. * `blocked` - The reward was reviewed and blocked. * `released` - The reward was reviewed and released. 
    attr_accessor :status

    # The array may contain multiple reasons, depending on which rule(s) flagged the reward for review. Reasons can be any of the following:  * `Disallowed IP` * `Disallowed email` * `Disallowed country` * `Over reward dollar limit` * `Over reward count limit` * `VPN detected` * `Device related to multiple emails` * `Device or account related to multiple emails` * `IP on a Tremendous fraud list` * `Bank account on a Tremendous fraud list` * `Fingerprint on a Tremendous fraud list` * `Email on a Tremendous fraud list` * `Phone on a Tremendous fraud list` * `IP related to a blocked reward` * `Bank account related to a blocked reward` * `Fingerprint related to a blocked reward` * `Email related to a blocked reward` * `Phone related to a blocked reward` * `Allowed IP` * `Allowed email` 
    attr_accessor :reasons

    # The name of the person who reviewed the reward, or `Automatic Review` if the reward was blocked automatically. Rewards can be automatically blocked if they remain in the flagged fraud queue for more than 30 days.  This field is only present if the status is not `flagged`. 
    attr_accessor :reviewed_by

    # When the reward was blocked or released following fraud review.  This field is only present if the status is not `flagged`. 
    attr_accessor :reviewed_at

    attr_accessor :related_rewards

    # The device fingerprint, if known.
    attr_accessor :device_id

    # The product selected to claim the reward
    attr_accessor :redemption_method

    # Date the reward was redeemed
    attr_accessor :redeemed_at

    attr_accessor :geo

    attr_accessor :reward

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
        :'status' => :'status',
        :'reasons' => :'reasons',
        :'reviewed_by' => :'reviewed_by',
        :'reviewed_at' => :'reviewed_at',
        :'related_rewards' => :'related_rewards',
        :'device_id' => :'device_id',
        :'redemption_method' => :'redemption_method',
        :'redeemed_at' => :'redeemed_at',
        :'geo' => :'geo',
        :'reward' => :'reward'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'String',
        :'reasons' => :'Array<String>',
        :'reviewed_by' => :'String',
        :'reviewed_at' => :'Time',
        :'related_rewards' => :'GetFraudReview200ResponseFraudReviewRelatedRewards',
        :'device_id' => :'String',
        :'redemption_method' => :'String',
        :'redeemed_at' => :'Time',
        :'geo' => :'GetFraudReview200ResponseFraudReviewGeo',
        :'reward' => :'OrderWithoutLinkRewardsInner'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Tremendous::FraudReview` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Tremendous::FraudReview`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'reasons')
        if (value = attributes[:'reasons']).is_a?(Array)
          self.reasons = value
        end
      end

      if attributes.key?(:'reviewed_by')
        self.reviewed_by = attributes[:'reviewed_by']
      end

      if attributes.key?(:'reviewed_at')
        self.reviewed_at = attributes[:'reviewed_at']
      end

      if attributes.key?(:'related_rewards')
        self.related_rewards = attributes[:'related_rewards']
      end

      if attributes.key?(:'device_id')
        self.device_id = attributes[:'device_id']
      end

      if attributes.key?(:'redemption_method')
        self.redemption_method = attributes[:'redemption_method']
      end

      if attributes.key?(:'redeemed_at')
        self.redeemed_at = attributes[:'redeemed_at']
      end

      if attributes.key?(:'geo')
        self.geo = attributes[:'geo']
      end

      if attributes.key?(:'reward')
        self.reward = attributes[:'reward']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      status_validator = EnumAttributeValidator.new('String', ["flagged", "blocked", "released"])
      return false unless status_validator.valid?(@status)
      redemption_method_validator = EnumAttributeValidator.new('String', ["paypal", "bank", "merchant card", "visa card", "charity", "venmo"])
      return false unless redemption_method_validator.valid?(@redemption_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["flagged", "blocked", "released"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redemption_method Object to be assigned
    def redemption_method=(redemption_method)
      validator = EnumAttributeValidator.new('String', ["paypal", "bank", "merchant card", "visa card", "charity", "venmo"])
      unless validator.valid?(redemption_method)
        fail ArgumentError, "invalid value for \"redemption_method\", must be one of #{validator.allowable_values}."
      end
      @redemption_method = redemption_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          reasons == o.reasons &&
          reviewed_by == o.reviewed_by &&
          reviewed_at == o.reviewed_at &&
          related_rewards == o.related_rewards &&
          device_id == o.device_id &&
          redemption_method == o.redemption_method &&
          redeemed_at == o.redeemed_at &&
          geo == o.geo &&
          reward == o.reward
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, reasons, reviewed_by, reviewed_at, related_rewards, device_id, redemption_method, redeemed_at, geo, reward].hash
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
