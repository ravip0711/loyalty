class CustomersController < ApplicationController

  def index
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render :create
    end

    # Customer.create(customer_params)

    # render :text => @customer.inspect
    # if Customer.create(customer_params)
    #   redirect_to customer_path
    # else
    #   render :create
    # end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :phone, :email, :zip_code, :birthday)
    end

end
