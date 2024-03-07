require "spec_helper"
require "support/setup"

RSpec.describe "Members endpoints" do
  subject(:tremendous_api) { Tremendous::TremendousApi.new }

  it "list members" do
    members = tremendous_api.list_members.members

    expect(members.size).to be > 0

    members.each do |member|
      expect(member).to respond_to(:id)
      expect(member).to respond_to(:email)
      expect(member).to respond_to(:name)
      expect(member).to respond_to(:role)
    end
  end
end
