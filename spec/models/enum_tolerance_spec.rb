require "spec_helper"

# Responses with enum values unknown to this SDK version must not fail parsing.
# The API adds enum values (product categories, fraud reasons, statuses) in
# most releases, and previously released versions of the SDK must keep working
# when they encounter them.
RSpec.describe "Enum tolerance" do
  def product_attributes(overrides = {})
    {
      "id" => "ABCD1234",
      "name" => "Test Product",
      "description" => "A test product",
      "category" => "merchant_card",
      "disclosure" => "",
      "currency_codes" => ["USD"],
      "countries" => [{ "abbr" => "US" }],
      "images" => []
    }.merge(overrides)
  end

  it "parses known enum values" do
    product = Tremendous::ListProductsResponseProductsInner.build_from_hash(product_attributes)

    expect(product.category).to eq("merchant_card")
  end

  it "parses unknown enum values, preserving the raw value" do
    product = Tremendous::ListProductsResponseProductsInner.build_from_hash(
      product_attributes("category" => "a_category_added_in_the_future")
    )

    expect(product.category).to eq("a_category_added_in_the_future")
  end

  it "still raises when a required enum value is missing" do
    expect {
      Tremendous::ListProductsResponseProductsInner.build_from_hash(
        product_attributes("category" => nil)
      )
    }.to raise_error(ArgumentError, /category cannot be nil/)
  end
end
