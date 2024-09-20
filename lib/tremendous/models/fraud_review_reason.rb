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
  class FraudReviewReason
    DISALLOWED_IP = "Disallowed IP".freeze
    DISALLOWED_EMAIL = "Disallowed email".freeze
    DISALLOWED_COUNTRY = "Disallowed country".freeze
    OVER_REWARD_DOLLAR_LIMIT = "Over reward dollar limit".freeze
    OVER_REWARD_COUNT_LIMIT = "Over reward count limit".freeze
    VPN_DETECTED = "VPN detected".freeze
    DEVICE_RELATED_TO_MULTIPLE_EMAILS = "Device related to multiple emails".freeze
    DEVICE_OR_ACCOUNT_RELATED_TO_MULTIPLE_EMAILS = "Device or account related to multiple emails".freeze
    IP_ON_A_TREMENDOUS_FRAUD_LIST = "IP on a Tremendous fraud list".freeze
    BANK_ACCOUNT_ON_A_TREMENDOUS_FRAUD_LIST = "Bank account on a Tremendous fraud list".freeze
    FINGERPRINT_ON_A_TREMENDOUS_FRAUD_LIST = "Fingerprint on a Tremendous fraud list".freeze
    EMAIL_ON_A_TREMENDOUS_FRAUD_LIST = "Email on a Tremendous fraud list".freeze
    PHONE_ON_A_TREMENDOUS_FRAUD_LIST = "Phone on a Tremendous fraud list".freeze
    IP_RELATED_TO_A_BLOCKED_REWARD = "IP related to a blocked reward".freeze
    BANK_ACCOUNT_RELATED_TO_A_BLOCKED_REWARD = "Bank account related to a blocked reward".freeze
    FINGERPRINT_RELATED_TO_A_BLOCKED_REWARD = "Fingerprint related to a blocked reward".freeze
    EMAIL_RELATED_TO_A_BLOCKED_REWARD = "Email related to a blocked reward".freeze
    PHONE_RELATED_TO_A_BLOCKED_REWARD = "Phone related to a blocked reward".freeze
    ALLOWED_IP = "Allowed IP".freeze
    ALLOWED_EMAIL = "Allowed email".freeze

    def self.all_vars
      @all_vars ||= [DISALLOWED_IP, DISALLOWED_EMAIL, DISALLOWED_COUNTRY, OVER_REWARD_DOLLAR_LIMIT, OVER_REWARD_COUNT_LIMIT, VPN_DETECTED, DEVICE_RELATED_TO_MULTIPLE_EMAILS, DEVICE_OR_ACCOUNT_RELATED_TO_MULTIPLE_EMAILS, IP_ON_A_TREMENDOUS_FRAUD_LIST, BANK_ACCOUNT_ON_A_TREMENDOUS_FRAUD_LIST, FINGERPRINT_ON_A_TREMENDOUS_FRAUD_LIST, EMAIL_ON_A_TREMENDOUS_FRAUD_LIST, PHONE_ON_A_TREMENDOUS_FRAUD_LIST, IP_RELATED_TO_A_BLOCKED_REWARD, BANK_ACCOUNT_RELATED_TO_A_BLOCKED_REWARD, FINGERPRINT_RELATED_TO_A_BLOCKED_REWARD, EMAIL_RELATED_TO_A_BLOCKED_REWARD, PHONE_RELATED_TO_A_BLOCKED_REWARD, ALLOWED_IP, ALLOWED_EMAIL].freeze
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
      return value if FraudReviewReason.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FraudReviewReason"
    end
  end
end