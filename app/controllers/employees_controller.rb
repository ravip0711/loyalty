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
    Employee.find_by(password_hash: )
    render :text => Bcrypt::password.new(params[:password])

    # returns the hashed password
    # user.password_digest

    #true, returns user, false if password is wrong
    # user.authenticate("password")

    # if the user exsists and the password entered is correct
    # user && user.authenticate(params[:password])

    # if @employee = Employee.find_by(password_digest: @password)
    #   render :text => "Hello"
    # else
    #   render :text => "nay"
    # end
  end


  private

  def employee_params
    params.require(:employee).permit(:user_name, :password, :password_confirmation)
  end
end
