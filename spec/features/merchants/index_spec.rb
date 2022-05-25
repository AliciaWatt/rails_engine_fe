require "rails_helper"

RSpec.describe "index" do
  let!(:merchants) { RailsEngineFacade.get_merchants }
  let!(:merchant) { merchants.sample(1)[0] }

  it "calls the API and returns a list of merchants" do
    visit "/merchants"

    within "div.merchants" do
      click_link "Merchant #{merchant.id}"
      expect(current_path).to eq("/merchants/#{merchant.id}")
    end
  end
end
