require "rails_helper"

RSpec.describe do
  let!(:id) { "4" }
  let!(:merchant) { RailsEngineFacade.get_merchant(id) }
  let!(:items) { RailsEngineFacade.get_merchant_items(id) }
  let!(:item) { items.sample(1)[0] }

  it "lists the merchant attributes" do
    visit "/merchants/#{id}"

    expect(page).to have_content(merchant.id)
    expect(page).to have_content(merchant.name)
  end

  it "lists all the items the merchant sells and each item name is a link to that items show page" do
    visit "/merchants/#{id}"

    within "div.items" do
      within "div.item_#{item.id}" do
        expect(page).to have_content(item.name)
        click_link item.name.to_s
        expect(current_path).to eq("/items/#{item.id}")
      end
    end
  end
end
