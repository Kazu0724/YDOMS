class Public::AddressesController < ApplicationController
  def index
    @addresses = Address.all.order(:genre_id)
    @genres = Genre.all
  end

  def show
    @address = Address.find(params[:id])
    @genres = Genre.all
  end

end
