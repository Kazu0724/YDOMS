class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.new
    @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path
    else
      @genres = Genre.all
      @items = Item.all
      render :index
    end
  end

  def edit
    @item = Item.find(params[:id])
    @genres = Genre.all
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_items_path
    else
      @genres = Genre.all
      @items = Item.all
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_path
  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end
