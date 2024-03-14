class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
    
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item)
    else
      @items = Item.all
      render index
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end
