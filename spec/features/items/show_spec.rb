require "rails_helper"

RSpec.describe "item show page" do
  let!(:attributes_merchant) { {id: 1, type: "model", attributes: {name: "Morgs"}} }
  let!(:merchant) { Merchant.new(attributes_merchant) }
  let!(:attributes) { {id: 1, type: "item", attributes: {name: "Clark", description: "a description", unit_price: 5.49, merchant_id: merchant.id}} }
  let!(:item) { Item.new(attributes) }

  visit "/items/#{item.id}"

  expect(page).to have_content(item.name)
  expect(page).to have_content(item.description)
  expect(page).to have_content(item.unit_price)
end
