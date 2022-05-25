class RailsEngineFacade
  def self.get_merchants
    RailsEngineService.get_merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.get_merchant(id)
    Merchant.new(RailsEngineService.get_merchant(id)[:data])
  end

  def self.get_merchant_items(id)
    RailsEngineService.get_merchant_items(id)[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
