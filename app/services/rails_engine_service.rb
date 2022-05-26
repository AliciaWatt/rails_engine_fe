require "json"

class RailsEngineService
  def self.get_url(url)
    root = "http://localhost:3000/api/v1"
    response = Faraday.get(root + url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchants
    get_url("/merchants")
  end

  def self.get_merchant(id)
    get_url("/merchants/#{id}")
  end

  def self.get_merchant_items(id)
    get_url("/merchants/#{id}/items")
  end

  def self.get_item(id)
    get_url("/items/#{id}")
  end
end
