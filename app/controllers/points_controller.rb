class PointsController < ApplicationController
  def new
    @customer = Customer.find(params[:customer_id])
    @point = Point.new

    # to erase admin logged if back button used on create view
    reset_session
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @point = Point.new(point_params)
    @point.customer_id = @customer.id
    if @point.save
      reset_session
      redirect_to @customer
    else
      render :new
    end
  end

  private
  
  def point_params
    params.require(:point).permit(:point_total)
  end

end
