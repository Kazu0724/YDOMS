class Admin::AddressesController < ApplicationController

  def index
    @addresses = Address.all.order(:genre_id)
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
      @genres = Genre.all
      render :new
    end
  end

  def show
    @address = Address.find(params[:id])
    @genres = Genre.all
  end

  def edit
    @address = Address.find(params[:id])
    @genres = Genre.all
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to admin_address_path
    else
      @genres = Genre.all
      render :edit
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to admin_addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:genre_id, :name, :postal_code, :address, :phone_number)
  end

end
