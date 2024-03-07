require "spec_helper"
require "support/setup"

RSpec.describe "Products endpoints" do
  subject(:tremendous_api) { Tremendous::TremendousApi.new }

  it "list products" do
    products = tremendous_api.list_products.products

    expect(products.size).to be > 0

    products.first(10).each do |product|
      expect(product).to respond_to(:id)
      expect(product).to respond_to(:name)
      expect(product).to respond_to(:currency_codes)
    end
  end

  it "gets a product" do
    product = tremendous_api.get_product(PRODUCT_ID).product

    expect(product.id).to eq(PRODUCT_ID)
    expect(product).to respond_to(:name)
    expect(product).to respond_to(:currency_codes)
  end
end
