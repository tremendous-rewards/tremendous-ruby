=begin
#API Endpoints

#Deliver monetary rewards and incentives to employees, customers, survey participants, and more through the Tremendous API. For organizational tasks, like managing your organization and it's members within Tremendous, please see the Tremendous Organizational API.

The version of the OpenAPI document: 2
Contact: developers@tremendous.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Tremendous::ListRewards200ResponseRewardsInnerDelivery
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Tremendous::ListRewards200ResponseRewardsInnerDelivery do
  let(:instance) { Tremendous::ListRewards200ResponseRewardsInnerDelivery.new }

  describe 'test an instance of ListRewards200ResponseRewardsInnerDelivery' do
    it 'should create an instance of ListRewards200ResponseRewardsInnerDelivery' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Tremendous::ListRewards200ResponseRewardsInnerDelivery)
    end
  end

  describe 'test attribute "method"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["EMAIL", "LINK", "PHONE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SCHEDULED", "FAILED", "SUCCEEDED", "PENDING"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end
