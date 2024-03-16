class Public::AddressesController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genres = Genre.all
  end

end
