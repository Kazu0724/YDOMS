class Admin::WorksController < ApplicationController
  def index
    @works = Work.all
    @employees = Employee.all
    @genres = Genre.all
  end

  def new
    @genres = Genre.all
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to admin_works_path
    else
      render :new
    end
  end

  def show
    @genres = Genre.all
    @work = Work.find(params[:id])
  end

  def edit
    @work = Work.find(params[:id])
    @genres = Genre.all
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to admin_work_path
    else
      render :edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to admin_works_path
  end

  private

  def work_params
    params.require(:work).permit(:address_id, :item_id, :admin_id, :employee_id, :date, :start_time, :end_time, :amount, :status)
  end

end
