require "rails_helper"

RSpec.describe "item show page" do
  let!(:item) { RailsEngineFacade.get_item("4") }

  it "shows item attributes" do
    visit "/items/#{item.id}"

    expect(page).to have_content(item.name)
    expect(page).to have_content(item.description)
    expect(page).to have_content(item.unit_price)
  end
end
