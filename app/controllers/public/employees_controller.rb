class Public::EmployeesController < ApplicationController
  before_action :ensure_guest_employee, only: [:edit]

  def index
    @employees = Employee.all.order(:employee_number)
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

  def ensure_guest_employee
    @employee = Employee.find(params[:id])
    if @employee.guest_employee?
      redirect_to employee_path(current_employee) , notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end

end
