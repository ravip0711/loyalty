class SessionsController < ApplicationController
  def new
  end

  def create
  	employee = Employee.find_by(employee_params)
  	if employee && employee.authenticate(params[:session][:password])
  		flash[:success] = "Welcome Back #{employee.user_name}"
  		redirect_to employee
  	else
  		flash.now[:danger] = "Employee not found"
  		render :new
  	end
  end
end
