class Public::InquiriesController < ApplicationController
  before_action :authenticate_employee!

  def index
    @inquiries = Inquiry.all
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

end
