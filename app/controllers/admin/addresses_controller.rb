class Admin::AddressesController < ApplicationController

  def index
    @addresses = Address.all
    @genres = Genre.all
  end

  def new
    @address = Address.new
    @genres = Genre.all
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to admin_addresses_path
    else
      render :new
    end
  end

  def show
    @genres = Genre.all
  end

  def edit
    @genres = Genre.all
  end

  def update
  end

  def destroy
  end

  private

  def address_params
    params.require(:address).permit(:genre_id, :name, :postal_code, :address, :phone_number)
  end

end
