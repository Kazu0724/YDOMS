class Public::AddressesController < ApplicationController
  def index
    @addresses = Address.all.order(:genre_id)
  end

  def show
    @address = Address.find(params[:id])
  end

end
