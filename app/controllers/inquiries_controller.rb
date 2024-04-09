class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.score = Language.get_data(inquiry_params[:message])
    if @inquiry.save
      InquiryMailer.send_mail(@inquiry).deliver_now
      redirect_to root_path
    else
      flash[:alert] = @inquiry.errors.full_messages.join(",")
      @inquiry = Inquiry.new
      render :new
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :subject, :message)
  end
end
