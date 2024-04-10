class Admin::InquiriesController < ApplicationController

  def index
    @inquiries = Inquiry.all
    @genres = Genre.all
  end

  def show
    @inquiry = Inquiry.find(params[:id])
    @genres = Genre.all
  end

  def destroy
    @inquiry = Inquiry.find(params[:id])
    @inquiry.destroy
    redirect_to admin_inquiries_path
  end

end
