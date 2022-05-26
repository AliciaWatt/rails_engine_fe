require "rails_helper"

RSpec.describe "Rails Engine Facade" do
  describe "get_merchants" do
    let!(:results) { RailsEngineFacade.get_merchants }
    let!(:merchants) { results.sample(1)[0] }

    it "returns an array of merchant objects" do
      expect(results).to be_a(Array)
      expect(merchant).to be_a(Merchant)
    end
  end

  describe "get_merchant" do
    let!(:id) { "1" }
    let!(:merchant) { RailsEngineFacade.get_merchant(id) }

    it "returns a merchant object" do
      expect(merchant).to be_a(Merchant)
    end

    it "has the correct id" do
      expect(merchant.id).to eq(id)
    end
  end

  describe "get_merchant_items" do
    let!(:id) { "1" }
    let!(:results) { RailsEngineFacade.get_merchant_items(id) }
    let!(:merchant_items) { results.sample(1)[0] }

    it "returns an array of item objects" do
      expect(results).to be_a(Array)
      expect(merchant_items).to be_a(Item)
    end
  end
  describe "get_item" do
    let!(:id) { "1" }
    let!(:item) { RailsEngineFacade.get_item(id) }

    it "returns an item object" do
      expect(item).to be_a(Item)
    end
  end
end
