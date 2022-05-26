class ItemsController < ApplicationController
  def show
    @item = get_item
  end

  private

  def get_item
    RailsEngineFacade.get_item(params[:id])
  end
end
