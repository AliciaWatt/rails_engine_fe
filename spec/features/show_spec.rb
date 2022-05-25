require "rails_helper"

RSpec.describe do
  let!(:id) { "1" }
  let!(:merchant) { RailsEngineFacade.get_merchant(id) }
  let!(:items) { RailsEngineFacade.get_merchant_items(id) }
  let!(:item) { items.sample(1)[0] }

  it "lists the merchant attributes" do
    visit "/merchants/#{id}"

    expect(page).to have_content(merchant.id)
    expect(page).to have_content(merchant.name)
  end

  it "lists all the items the merchant sells" do
    visit "/merchants/#{id}"

    within "div.itmes" do
      within "div.item_#{item.id}" do
        expect(page).to have_content(item.name)
      end
    end
  end
end
