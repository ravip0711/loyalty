class CustomersController < ApplicationController

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
  end

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :phone, :email, :zip_code, :birthday)
    end

end
