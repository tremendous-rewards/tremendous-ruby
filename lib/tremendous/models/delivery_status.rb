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
  class DeliveryStatus
    SCHEDULED = "SCHEDULED".freeze
    FAILED = "FAILED".freeze
    SUCCEEDED = "SUCCEEDED".freeze
    PENDING = "PENDING".freeze

    def self.all_vars
      @all_vars ||= [SCHEDULED, FAILED, SUCCEEDED, PENDING].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if DeliveryStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #DeliveryStatus"
    end
  end
end
