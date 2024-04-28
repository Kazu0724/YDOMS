class Public::InquiriesController < ApplicationController
  before_action :authenticate_employee!

  def index
    @inquiries = Inquiry.all.sort.reverse
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

end
