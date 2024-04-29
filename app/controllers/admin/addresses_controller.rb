class Admin::AddressesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @addresses = Address.all.order(:genre_id)
  end

  def new
    @address = Address.new
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
    @address = Address.find(params[:id])
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to admin_address_path
    else
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
