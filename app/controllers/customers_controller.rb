class CustomersController < ApplicationController
  def new
    # to erase any sessions, from edit back button
    reset_session
    
    if @customer = Customer.find_by(phone: params[:phone])
      redirect_to @customer
    else
      @customer = Customer.new(phone: params[:phone])
    end
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer, notice: "Customer was successfully saved"
    else
      render 'new', notice: "Customer was unsuccessfully saved"
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
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :phone, :email, :zip_code, :birthday)
  end
end
