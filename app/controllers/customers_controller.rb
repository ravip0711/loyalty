class CustomersController < ApplicationController

  def create
    @customer = Customer.new(@customer)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :create
    end
  end

end
