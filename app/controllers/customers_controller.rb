class CustomersController < ApplicationController

  def search
    @customer = Customer.find_by(phone: params[:phone])
    if @customer
      redirect_to @customer
    else
      @customer = Customer.new(phone: params[:phone])
      render :new
    end
  end

  def new
    @customer = Customer.new
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
    @points = @customer.points
  end

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :phone, :email, :zip_code, :birthday)
    end

end
