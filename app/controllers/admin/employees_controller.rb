class Admin::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def employee_params
    params.require(:employee).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :employee_number, :phone_number, :email, :car_number)
  end

end
