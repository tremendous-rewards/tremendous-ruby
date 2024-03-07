require "spec_helper"
require "support/setup"

RSpec.describe "Campaigns endpoints" do
  subject(:tremendous_api) { Tremendous::TremendousApi.new }

  it "list campaigns" do
    campaigns = tremendous_api.list_campaigns.campaigns

    expect(campaigns.size).to be > 0

    campaigns.first(10).each do |campaign|
      expect(campaign).to respond_to(:id)
      expect(campaign).to respond_to(:name)
      expect(campaign).to respond_to(:description)
      expect(campaign).to respond_to(:products)
    end
  end

  it "gets a campaign" do
    campaign = tremendous_api.get_campaign(CAMPAIGN_ID).campaign

    expect(campaign.id).to eq(CAMPAIGN_ID)
    expect(campaign.products.size).to eq(3)
    expect(campaign.name).to eq("Default Campaign")
  end
end
