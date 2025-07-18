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
  # A product represents one way to payout a reward to its recipient. Think:  * Amazon.com gift card (ID: `OKMHM2X2OHYV`) * Donations to Save the Children (ID: `ESRNAD533W5A`) * Virtual Visa debit card (ID: `Q24BD9EZ332JT`)  each of which is one specific product on Tremendous.  > 📘 All available products > > See this [list](https://www.tremendous.com/catalog)  Products can be limited in their availability to recipients by  * geography (field `countries`) * currency (field `currencies`) * amount of the reward (field `skus`)   * e.g. adidas gift cards accept any amount between 5 and 200 USD.  See the description of each respective parameter for further details. 
  class Product
    attr_accessor :id

    # Name of the product
    attr_accessor :name

    # Detailed description of the product. Mostly used for products with a `category` of `charities`.
    attr_accessor :description

    # The category of this product  <table>   <thead>     <tr>       <th>Category</th>       <th>Description</th>     </tr>   </thead>   <tbody>     <tr>       <td><code>ach</code></td>       <td>Bank transfer to the recipient</td>     </tr>     <tr>       <td><code>charity</code></td>       <td>Donations to a charity</td>     </tr>     <tr>       <td><code>instant_debit_transfer</code></td>       <td>Instant debit transfer to the recipient</td>     </tr>     <tr>       <td><code>merchant_card</code></td>       <td>A gift card for a certain merchant (e.g. Amazon)</td>     </tr>     <tr>       <td><code>paypal</code></td>       <td>Payout via PayPal</td>     </tr>     <tr>       <td><code>venmo</code></td>       <td>Payout via Venmo</td>     </tr>     <tr>       <td><code>visa_card</code></td>       <td>Payout in form of a Visa debit card</td>     </tr>   </tbody> </table> 
    attr_accessor :category

    # Legal disclosures for this product. Can be in HTML format.
    attr_accessor :disclosure

    # Products are restricted in their usage based on the amount of the reward. The `skus` array defines bands of denominations in which this product may be used for payouts. 
    attr_accessor :skus

    # Available currencies for this product
    attr_accessor :currency_codes

    # List of countries in which this product is available to recipients.
    attr_accessor :countries

    # List of product images associated with this product (e.g. logos or images of the gift cards)
    attr_accessor :images

    # Instructions for how to use the product, if applicable. Mostly used for products with a `category` of `merchant_card`.
    attr_accessor :usage_instructions

    attr_accessor :documents

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
        :'name' => :'name',
        :'description' => :'description',
        :'category' => :'category',
        :'disclosure' => :'disclosure',
        :'skus' => :'skus',
        :'currency_codes' => :'currency_codes',
        :'countries' => :'countries',
        :'images' => :'images',
        :'usage_instructions' => :'usage_instructions',
        :'documents' => :'documents'
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
        :'name' => :'String',
        :'description' => :'String',
        :'category' => :'String',
        :'disclosure' => :'String',
        :'skus' => :'Array<ListProductsResponseProductsInnerSkusInner>',
        :'currency_codes' => :'Array<String>',
        :'countries' => :'Array<ListProductsResponseProductsInnerCountriesInner>',
        :'images' => :'Array<ListProductsResponseProductsInnerImagesInner>',
        :'usage_instructions' => :'String',
        :'documents' => :'ListProductsResponseProductsInnerDocuments'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'documents'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Tremendous::Product` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Tremendous::Product`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      else
        self.category = nil
      end

      if attributes.key?(:'disclosure')
        self.disclosure = attributes[:'disclosure']
      else
        self.disclosure = nil
      end

      if attributes.key?(:'skus')
        if (value = attributes[:'skus']).is_a?(Array)
          self.skus = value
        end
      end

      if attributes.key?(:'currency_codes')
        if (value = attributes[:'currency_codes']).is_a?(Array)
          self.currency_codes = value
        end
      else
        self.currency_codes = nil
      end

      if attributes.key?(:'countries')
        if (value = attributes[:'countries']).is_a?(Array)
          self.countries = value
        end
      else
        self.countries = nil
      end

      if attributes.key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      else
        self.images = nil
      end

      if attributes.key?(:'usage_instructions')
        self.usage_instructions = attributes[:'usage_instructions']
      end

      if attributes.key?(:'documents')
        self.documents = attributes[:'documents']
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

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @category.nil?
        invalid_properties.push('invalid value for "category", category cannot be nil.')
      end

      if @disclosure.nil?
        invalid_properties.push('invalid value for "disclosure", disclosure cannot be nil.')
      end

      if @currency_codes.nil?
        invalid_properties.push('invalid value for "currency_codes", currency_codes cannot be nil.')
      end

      if @currency_codes.length < 1
        invalid_properties.push('invalid value for "currency_codes", number of items must be greater than or equal to 1.')
      end

      if @countries.nil?
        invalid_properties.push('invalid value for "countries", countries cannot be nil.')
      end

      if @countries.length < 1
        invalid_properties.push('invalid value for "countries", number of items must be greater than or equal to 1.')
      end

      if @images.nil?
        invalid_properties.push('invalid value for "images", images cannot be nil.')
      end

      if @images.length < 0
        invalid_properties.push('invalid value for "images", number of items must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @id !~ Regexp.new(/[A-Z0-9]{4,20}/)
      return false if @name.nil?
      return false if @description.nil?
      return false if @category.nil?
      category_validator = EnumAttributeValidator.new('String', ["ach", "charity", "instant_debit_transfer", "merchant_card", "paypal", "venmo", "visa_card"])
      return false unless category_validator.valid?(@category)
      return false if @disclosure.nil?
      return false if @currency_codes.nil?
      return false if @currency_codes.length < 1
      return false if @countries.nil?
      return false if @countries.length < 1
      return false if @images.nil?
      return false if @images.length < 0
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      validator = EnumAttributeValidator.new('String', ["ach", "charity", "instant_debit_transfer", "merchant_card", "paypal", "venmo", "visa_card"])
      unless validator.valid?(category)
        fail ArgumentError, "invalid value for \"category\", must be one of #{validator.allowable_values}."
      end
      @category = category
    end

    # Custom attribute writer method with validation
    # @param [Object] countries Value to be assigned
    def countries=(countries)
      if countries.nil?
        fail ArgumentError, 'countries cannot be nil'
      end

      if countries.length < 1
        fail ArgumentError, 'invalid value for "countries", number of items must be greater than or equal to 1.'
      end

      @countries = countries
    end

    # Custom attribute writer method with validation
    # @param [Object] images Value to be assigned
    def images=(images)
      if images.nil?
        fail ArgumentError, 'images cannot be nil'
      end

      if images.length < 0
        fail ArgumentError, 'invalid value for "images", number of items must be greater than or equal to 0.'
      end

      @images = images
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          category == o.category &&
          disclosure == o.disclosure &&
          skus == o.skus &&
          currency_codes == o.currency_codes &&
          countries == o.countries &&
          images == o.images &&
          usage_instructions == o.usage_instructions &&
          documents == o.documents
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, description, category, disclosure, skus, currency_codes, countries, images, usage_instructions, documents].hash
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
