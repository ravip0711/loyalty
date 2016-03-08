class EmployeesController < ApplicationController
  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:success] = "#{@employee.user_name} successfully saved"
      redirect_to @employee
    else
      flash.now[:danger] = "Employee not found"
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
      flash[:success] = "Successfully updated"
      redirect_to @employee
    else
      flash.now[:danger] = "Unable to update, please check the form"
      render :edit
    end
  end

  def passcode_login
    @customer = Customer.find(params[:id])
    @employee = Employee.find_by(passcode: params[:passcode])
    
    unless @employee.nil?
      session[:current_employee_id] = @employee.id
      flash[:success] = "Employee Logged In"
    end

    redirect_to customer_path(@customer)
  end

  private

  def employee_params
    params.require(:employee).permit(:user_name, :password, :password_confirmation, :passcode)
  end
end
