require "rails_helper"

RSpec.describe "rails_engine_service" do
  describe "get_merchants" do
    let!(:merchant_data) { RailsEngineService.get_merchants }

    it "returns the correct data format" do
      expect(merchants_data).to be_a(Hash)
      expect(merchants_data).to have_key(:data)
      expect(merchants_data[:data]).to be_a(Array)
      expect(merchants_data[:data][0]).to be_a(Hash)

      expect(merchants_data[:data][0]).to have_key(:id)
      expect(merchants_data[:data][0][:id]).to be_a(String)

      expect(merchants_data[:data][0]).to have_key(:attributes)
      expect(merchants_data[:data][0][:attributes]).to be_a(Hash)

      expect(merchants_data[:data][0][:attributes]).to have_key(:name)
      expect(merchants_data[:data][0][:attributes][:name]).to be_a(String)
    end
  end

  describe "get_merchant" do
    let!(:id) { "1" }
    let!(:merchant_data) { RailsEngineService.get_merchant(id) }
    it "returns the correct data format" do
      expect(merchant_data).to be_a(Hash)
      expect(merchant_data).to have_key(:data)
      expect(merchant_data[:data]).to be_a(Hash)

      expect(merchant_data[:data]).to have_key(:id)
      expect(merchant_data[:data][:id]).to be_a(String)

      expect(merchant_data[:data]).to have_key(:attributes)
      expect(merchant_data[:data][:attributes]).to be_a(Hash)

      expect(merchant_data[:data][:attributes]).to have_key(:name)
      expect(merchant_data[:data][:attributes][:name]).to be_a(String)
    end
  end

  describe "get_merchant_items" do
    let!(:id) { "1" }
    let!(:merchant_items_data) { RailsEngineService.get_merchant_items(id) }
    it "returns the correct data format" do
      expect(merchant_items_data).to be_a(Hash)
      expect(merchant_items_data).to have_key(:data)
      expect(merchant_items_data[:data]).to be_a(Array)

      expect(merchant_items_data[:data][0]).to have_key(:id)
      expect(merchant_items_data[:data][0][:id]).to be_a(String)

      expect(merchant_items_data[:data][0]).to have_key(:type)
      expect(merchant_items_data[:data][0][:type]).to eq("item")

      expect(merchant_items_data[:data][0]).to have_key(:attributes)
      expect(merchant_items_data[:data][0][:attributes]).to be_a(Hash)

      expect(merchant_items_data[:data][0][:attributes]).to have_key(:name)
      expect(merchant_items_data[:data][0][:attributes][:name]).to be_a(String)
    end
  end
end