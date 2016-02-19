class CustomersController < ApplicationController
  before_filter :standardise_numbers, :only => [ :search, :create, :update ]

  def search
    if @customer = Customer.find_by(phone: params[:phone])
      redirect_to @customer
    else
      @customer = Customer.new(phone: params[:phone])
      render :new
    end
  end

  def new
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

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :phone, :email, :zip_code, :birthday)
    end

    def standardise_numbers
      params[:phone].gsub!(/\D/, "").to_s
    end
end
