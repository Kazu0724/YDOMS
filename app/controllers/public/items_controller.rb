class Public::ItemsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @items = Item.all
  end
end
