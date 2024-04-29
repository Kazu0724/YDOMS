class Public::AddressesController < ApplicationController
  before_action :authenticate_employee!

  def index
    @addresses = Address.all.order(:genre_id)
  end

  def show
    @address = Address.find(params[:id])
  end

end
