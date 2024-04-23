class Public::WorksController < ApplicationController
  def index
    @works = Work.all.order(:date)
    @employees = Employee.all
    @work_list = {}
  end

  def show
    @work = Work.find(params[:id])
    @work_comment = WorkComment.new
  end

  def status
    @work = Work.find(params[:id])
    if @work.status == true
      @work.update_attribute(:status, false)
    else
      @work.update_attribute(:status, true)
    end
  end
end
