class PointsController < ApplicationController
#working on routing points
  # def index
  #   @customer = Customer.find(params[:customer_id])
  #   @points = @customer.points.create(point_params) 
  # end

  def new
    @points = points
    # @customer = Customer.find(params[:customer_id])
    # @points = @customer.points.create(point_params) 
  end

  def add
  end

  private
  
  def point_params
    params.require(:point).permit(:point_total)
  end

end
