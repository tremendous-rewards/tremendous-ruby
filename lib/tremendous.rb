=begin
#API Endpoints

#Deliver monetary rewards and incentives to employees, customers, survey participants, and more through the Tremendous API. For organizational tasks, like managing your organization and it's members within Tremendous, please see the Tremendous Organizational API.

The version of the OpenAPI document: 2
Contact: developers@tremendous.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

# Common files
require 'tremendous/api_client'
require 'tremendous/api_error'
require 'tremendous/version'
require 'tremendous/configuration'

# Models
require 'tremendous/models/allow_email'
require 'tremendous/models/allow_email1'
require 'tremendous/models/allow_ip'
require 'tremendous/models/allow_ip1'
require 'tremendous/models/balance_transaction'
require 'tremendous/models/base_order_for_create'
require 'tremendous/models/campaign'
require 'tremendous/models/campaign_base'
require 'tremendous/models/channel'
require 'tremendous/models/create_api_key200_response'
require 'tremendous/models/create_campaign201_response'
require 'tremendous/models/create_campaign_request'
require 'tremendous/models/create_invoice'
require 'tremendous/models/create_invoice200_response'
require 'tremendous/models/create_invoice_request'
require 'tremendous/models/create_member'
require 'tremendous/models/create_member200_response'
require 'tremendous/models/create_member_request'
require 'tremendous/models/create_order200_response'
require 'tremendous/models/create_order_request'
require 'tremendous/models/create_organization'
require 'tremendous/models/create_organization200_response'
require 'tremendous/models/create_organization200_response_organization'
require 'tremendous/models/create_organization_request'
require 'tremendous/models/create_organization_request_copy_settings'
require 'tremendous/models/create_public_key'
require 'tremendous/models/create_webhook200_response'
require 'tremendous/models/create_webhook_request'
require 'tremendous/models/currency_codes'
require 'tremendous/models/custom_field'
require 'tremendous/models/delete_fraud_rule200_response'
require 'tremendous/models/delivery_details'
require 'tremendous/models/delivery_method'
require 'tremendous/models/delivery_status'
require 'tremendous/models/error_model'
require 'tremendous/models/field'
require 'tremendous/models/fraud_config_allow_email'
require 'tremendous/models/fraud_config_country'
require 'tremendous/models/fraud_config_country_update_list'
require 'tremendous/models/fraud_config_ip'
require 'tremendous/models/fraud_config_redeemed_rewards_amount'
require 'tremendous/models/fraud_config_redeemed_rewards_count'
require 'tremendous/models/fraud_config_review_email'
require 'tremendous/models/fraud_generic_response'
require 'tremendous/models/fraud_review'
require 'tremendous/models/fraud_review_geo'
require 'tremendous/models/fraud_review_list_item'
require 'tremendous/models/fraud_review_reason'
require 'tremendous/models/fraud_review_redemption_method'
require 'tremendous/models/fraud_review_related_rewards'
require 'tremendous/models/fraud_review_status'
require 'tremendous/models/fraud_rule200_response'
require 'tremendous/models/fraud_rule400_response'
require 'tremendous/models/fraud_rule422_response'
require 'tremendous/models/fraud_rule_request'
require 'tremendous/models/fraud_rule_request_config'
require 'tremendous/models/fraud_rule_type'
require 'tremendous/models/fraud_rules_list_item'
require 'tremendous/models/funding_source'
require 'tremendous/models/generate_reward_link200_response'
require 'tremendous/models/generate_reward_link200_response_reward'
require 'tremendous/models/generate_reward_link403_response'
require 'tremendous/models/generate_reward_token200_response'
require 'tremendous/models/generate_reward_token200_response_reward'
require 'tremendous/models/get_fraud_review200_response'
require 'tremendous/models/get_fraud_review200_response_fraud_review'
require 'tremendous/models/get_fraud_review200_response_fraud_review_geo'
require 'tremendous/models/get_fraud_review200_response_fraud_review_related_rewards'
require 'tremendous/models/get_funding_source200_response'
require 'tremendous/models/get_member200_response'
require 'tremendous/models/get_member200_response_member'
require 'tremendous/models/get_member200_response_member_events_inner'
require 'tremendous/models/get_organization200_response'
require 'tremendous/models/get_product_response'
require 'tremendous/models/get_reward200_response'
require 'tremendous/models/invoice'
require 'tremendous/models/list_balance_transactions200_response'
require 'tremendous/models/list_balance_transactions200_response_transactions_inner'
require 'tremendous/models/list_campaigns200_response'
require 'tremendous/models/list_campaigns200_response_campaigns_inner'
require 'tremendous/models/list_campaigns200_response_campaigns_inner_email_style'
require 'tremendous/models/list_campaigns200_response_campaigns_inner_webpage_style'
require 'tremendous/models/list_fields200_response'
require 'tremendous/models/list_fields200_response_fields_inner'
require 'tremendous/models/list_forex_response'
require 'tremendous/models/list_fraud_reviews200_response'
require 'tremendous/models/list_fraud_reviews200_response_fraud_reviews_inner'
require 'tremendous/models/list_fraud_rules200_response'
require 'tremendous/models/list_fraud_rules200_response_fraud_rules_inner'
require 'tremendous/models/list_funding_sources200_response'
require 'tremendous/models/list_funding_sources200_response_funding_sources_inner'
require 'tremendous/models/list_funding_sources200_response_funding_sources_inner_meta'
require 'tremendous/models/list_invoices200_response'
require 'tremendous/models/list_invoices200_response_invoices_inner'
require 'tremendous/models/list_members200_response'
require 'tremendous/models/list_members200_response_members_inner'
require 'tremendous/models/list_orders200_response'
require 'tremendous/models/list_orders200_response_orders_inner'
require 'tremendous/models/list_orders200_response_orders_inner_payment'
require 'tremendous/models/list_orders200_response_orders_inner_payment_refund'
require 'tremendous/models/list_organizations200_response'
require 'tremendous/models/list_organizations200_response_organizations_inner'
require 'tremendous/models/list_products_response'
require 'tremendous/models/list_products_response_products_inner'
require 'tremendous/models/list_products_response_products_inner_countries_inner'
require 'tremendous/models/list_products_response_products_inner_images_inner'
require 'tremendous/models/list_products_response_products_inner_skus_inner'
require 'tremendous/models/list_rewards200_response'
require 'tremendous/models/list_rewards200_response_rewards_inner'
require 'tremendous/models/list_rewards200_response_rewards_inner_custom_fields_inner'
require 'tremendous/models/list_rewards200_response_rewards_inner_delivery'
require 'tremendous/models/list_rewards200_response_rewards_inner_recipient'
require 'tremendous/models/list_rewards200_response_rewards_inner_value'
require 'tremendous/models/list_rewards401_response'
require 'tremendous/models/list_rewards401_response_errors'
require 'tremendous/models/list_rewards429_response'
require 'tremendous/models/list_roles200_response'
require 'tremendous/models/list_roles200_response_roles_inner'
require 'tremendous/models/list_webhook_events200_response'
require 'tremendous/models/list_webhooks200_response'
require 'tremendous/models/list_webhooks200_response_webhooks_inner'
require 'tremendous/models/member'
require 'tremendous/models/member_base'
require 'tremendous/models/member_with_events'
require 'tremendous/models/member_without_events'
require 'tremendous/models/order'
require 'tremendous/models/order_base'
require 'tremendous/models/order_base_payment'
require 'tremendous/models/order_status'
require 'tremendous/models/order_without_link'
require 'tremendous/models/order_without_link_rewards_inner'
require 'tremendous/models/organization'
require 'tremendous/models/payment_details'
require 'tremendous/models/payment_details_refund'
require 'tremendous/models/product'
require 'tremendous/models/public_key'
require 'tremendous/models/recipient'
require 'tremendous/models/refund_details'
require 'tremendous/models/resend_reward422_response'
require 'tremendous/models/review_country'
require 'tremendous/models/review_country1'
require 'tremendous/models/review_email'
require 'tremendous/models/review_email1'
require 'tremendous/models/review_ip'
require 'tremendous/models/review_ip1'
require 'tremendous/models/review_redeemed_rewards_amount'
require 'tremendous/models/review_redeemed_rewards_count'
require 'tremendous/models/reward'
require 'tremendous/models/reward_base'
require 'tremendous/models/reward_base_custom_fields_inner'
require 'tremendous/models/reward_for_order_create'
require 'tremendous/models/reward_link'
require 'tremendous/models/reward_token'
require 'tremendous/models/reward_value'
require 'tremendous/models/reward_without_link'
require 'tremendous/models/reward_without_link_delivery'
require 'tremendous/models/role'
require 'tremendous/models/simulate_webhook_request'
require 'tremendous/models/single_reward_order'
require 'tremendous/models/single_reward_order1'
require 'tremendous/models/single_reward_order1_payment'
require 'tremendous/models/single_reward_order1_reward'
require 'tremendous/models/single_reward_order1_reward_custom_fields_inner'
require 'tremendous/models/single_reward_order1_reward_delivery'
require 'tremendous/models/single_reward_order_reward'
require 'tremendous/models/single_reward_order_without_link'
require 'tremendous/models/single_reward_order_without_link_order'
require 'tremendous/models/test_public_key'
require 'tremendous/models/update_campaign'
require 'tremendous/models/update_campaign_request'
require 'tremendous/models/update_fraud_rule_list200_response'
require 'tremendous/models/update_fraud_rule_list_request'
require 'tremendous/models/update_fraud_rule_list_request_config'
require 'tremendous/models/webhook'
require 'tremendous/models/webhook_post'

# APIs
require 'tremendous/api/tremendous_api'

module Tremendous
  class << self
    # Customize default settings for the SDK using block.
    #   Tremendous.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
