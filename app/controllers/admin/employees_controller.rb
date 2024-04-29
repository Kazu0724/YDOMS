class Admin::EmployeesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @employees = Employee.all.order(:employee_number)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to admin_employee_path
    else
      @employee = Employee.find(params[:id])
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to admin_employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :employee_number, :phone_number, :email, :car_number)
  end

end
