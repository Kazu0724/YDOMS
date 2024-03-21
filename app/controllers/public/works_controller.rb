class Public::WorksController < ApplicationController
  def index
    @works = Work.all.order(:date)
    @employees = Employee.all
    @work_list = {}
    @genres = Genre.all
  end

  def show
    @genres = Genre.all
    @work = Work.find(params[:id])
  end

  def status
    @work = Work.find(params[:id])
    if @work.status == true
      @work.update_attribute(:status, false)
      redirect_to request.referer
    else
      @work.update_attribute(:status, true)
      redirect_to request.referer
    end
  end
end
