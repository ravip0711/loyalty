class CustomersController < ApplicationController

  def search
    render :text => params.inspect
    # @user = User.find_by phone: params[:phone]
  end

  def new
    @customer = Customer.new
  end

  def create
    if @customer = Customer.find_by(phone: customer_params[:phone])
      redirect_to @customer
    else
      @customer = Customer.new(customer_params)
      if @customer.save
        redirect_to @customer, notice: "Customer was successfully saved"
      else
        render 'new', notice: "Customer was unsuccessfully saved"
      end
    end
  end

  def show
    @customer = Customer.find(params[:id])
    @points = @customer.points
    # do |points|
    #   points.point_total
    # end
  end

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :phone, :email, :zip_code, :birthday)
    end

end
