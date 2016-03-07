class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to root_path
    else
      flash[:error] = "incorrect data, please check form"
      render new_employee_path
    end
  end

  def login
    @customer = Customer.find(params[:id])
    @employee = Employee.find_by(passcode: params[:passcode])
    
    unless @employee.nil?
      session[:current_employee_id] = @employee.id
    end

    redirect_to customer_path(@customer)
  end

  private

  def employee_params
    params.require(:employee).permit(:user_name, :password, :password_confirmation)
  end
end
