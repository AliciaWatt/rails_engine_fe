require "rails_helper"

RSpec.describe "merchant poro" do
  let!(:attributes) { {id: 1, type: "model", attributes: {name: "Kate"}} }
  let!(:merchant) { Merchant.new(attributes) }

  it "exists" do
    expect(merchant).to be_a(Merchant)
  end

  it "has attributes" do
    expect(merchant.name).to eq("Kate")
    expect(merchant.id).to eq(1)
  end
end
