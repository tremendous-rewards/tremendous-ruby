require "spec_helper"
require "support/setup"

RSpec.describe "Invoices endpoints" do
  subject(:tremendous_api) { Tremendous::TremendousApi.new }

  it "list invoices" do
    invoices = tremendous_api.list_invoices.invoices

    expect(invoices.size).to be > 0

    invoices.each do |invoice|
      expect(invoice).to respond_to(:id)
      expect(invoice).to respond_to(:po_number)
      expect(invoice).to respond_to(:amount)
      expect(invoice).to respond_to(:created_at)
    end
  end
end
