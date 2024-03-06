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

# Unit tests for Tremendous::ListOrders200ResponseOrdersInnerPayment
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Tremendous::ListOrders200ResponseOrdersInnerPayment do
  let(:instance) { Tremendous::ListOrders200ResponseOrdersInnerPayment.new }

  describe 'test an instance of ListOrders200ResponseOrdersInnerPayment' do
    it 'should create an instance of ListOrders200ResponseOrdersInnerPayment' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Tremendous::ListOrders200ResponseOrdersInnerPayment)
    end
  end

  describe 'test attribute "subtotal"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "total"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "fees"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "refund"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "channel"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["UI", "API", "EMBED", "DECIPHER", "QUALTRICS", "TYPEFORM", "SURVEY MONKEY"])
      # validator.allowable_values.each do |value|
      #   expect { instance.channel = value }.not_to raise_error
      # end
    end
  end

end
