class Public::EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    @genres = Genre.all
  end

  def show
    @employee = Employee.find(params[:id])
    @genres = Genre.all
  end

  def edit
    @employee = Employee.find(params[:id])
    @genres = Genre.all
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employee_path
    else
      @employee = Employee.find(params[:id])
      render :edit
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, :email)
  end

end
