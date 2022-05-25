class MerchantsController < ApplicationController
  def index
    @merchants = RailsEngineFacade.get_merchants
  end

  def show
    @merchant = get_merchant
    @items = get_merchant_items
  end

  private

  def get_merchant
    @merchant = RailsEngineFacade.get_merchant(params[:id])
  end

  def get_merchant_items
    @items = RailsEngineFacade.get_merchant_items(params[:id])
  end
end\
