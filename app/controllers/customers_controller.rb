class CustomersController < ApplicationController
  before_action :employee_logged_in, only: [:edit, :update, :destroy]

  def new
    # to erase any sessions, from edit back button
    reset_session
    
    if @customer = Customer.find_by(phone: params[:phone])
      flash[:success] = "Welcome back"
      redirect_to @customer
    else
      @customer = Customer.new(phone: params[:phone])
      flash.now[:danger] = "Customer not found, please sign up!"
    end
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = "#{@customer.first_name} #{@customer.last_name} was successfully saved"
      redirect_to @customer
    else
      flash.now[:danger] = "Customer was unsuccessfully saved, please check form"
      render 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
    points_array = @customer.points.map(&:point_total)
    @points = points_array.reduce(:+)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      flash[:success] = "Successfully updated"
      redirect_to customer_path(@customer)
    else
      flash.now[:danger] = "Unable to update, please check form"
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone, :email, :zip_code, :birthday)
  end

  def employee_logged_in
    @customer = Customer.find(params[:id])
    unless !session[:current_employee_id].nil?
      flash[:danger] = "Employee needs to be logged in to edit"
      redirect_to customer_path(@customer)
    end
  end

end
