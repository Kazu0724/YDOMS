class Public::EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
  end

  def edit
  end

end
