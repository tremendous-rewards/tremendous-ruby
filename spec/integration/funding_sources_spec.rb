require "spec_helper"
require "support/setup"

RSpec.describe "Funding Sources endpoints" do
  subject(:tremendous_api) { Tremendous::TremendousApi.new }

  it "list funding sources" do
    funding_sources = tremendous_api.list_funding_sources.funding_sources

    expect(funding_sources.size).to be > 0

    funding_sources.each do |funding_source|
      expect(funding_sources).to respond_to(:id)
      expect(funding_sources).to respond_to(:method)
      expect(funding_sources).to respond_to(:meta)
    end
  end
end
