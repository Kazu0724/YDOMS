class Admin::InquiriesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @inquiries = Inquiry.all.sort.reverse
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  def destroy
    @inquiry = Inquiry.find(params[:id])
    @inquiry.destroy
    redirect_to admin_inquiries_path
  end

end
