class Public::InquiriesController < ApplicationController

  def index
    @inquiries = Inquiry.all
    @genres = Genre.all
  end

  def show
    @inquiry = Inquiry.find(params[:id])
    @genres = Genre.all
  end

end
