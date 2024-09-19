require "spec_helper"
require "support/setup"

RSpec.describe "Orders endpoints" do
  subject(:tremendous_api) { Tremendous::TremendousApi.new }

  it "list orders" do
    orders = tremendous_api.list_orders.orders

    expect(orders.size).to be > 0

    orders.first(10).each do |member|
      expect(member).to respond_to(:id)
      expect(member).to respond_to(:created_at)
      expect(member).to respond_to(:payment)
    end
  end

  it "submit an order with a campaign" do
    data = tremendous_api.create_order(
      payment: { funding_source_id: "balance" },
      reward:  {
        delivery: {
          method: "EMAIL"
        },
        recipient: {
          name: "Recipient Name",
          email: RECIPIENT_EMAIL
        },
        value: {
          denomination: 5.0,
          currency_code: "USD",
        },
         campaign_id: CAMPAIGN_ID,
    })

    expect(data.order.id).to be
    expect(data.order.campaign_id).to eq(CAMPAIGN_ID)
    expect(data.order.status).to eq("EXECUTED")

    order = tremendous_api.get_order(data.order.id).order

    expect(order.id).to eq(data.order.id)
    expect(order.campaign_id).to eq(CAMPAIGN_ID)
    expect(order.status).to eq("EXECUTED")

    expect(order.rewards.length).to eq(1)
    expect(order.rewards[0].recipient.email).to eq(RECIPIENT_EMAIL)
  end

  it "raise validation errors" do
    expect {
      tremendous_api.create_order(payment: { funding_source_id: "WRONG ID"}, reward: {})
    }.to raise_error(Tremendous::ApiError) { |error|
      expect(error.code).to eq(422)
      response = JSON.parse(error.response_body)

      expect(response["errors"]).to have_key("message")
      expect(response["errors"]).to have_key("payload")
    }
  end
end
