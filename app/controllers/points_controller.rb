class PointsController < ApplicationController

  def new
    @customer = Customer.find(params[:customer_id])
    @point = Point.new
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @point = Point.new(point_params)
    @point.customer_id = @customer.id
    if @point.save
      redirect_to @customer
    else
      render :new
    end
  end

# working on this method to delete point by adding negative automatically
  # def delete
  #   @customer = Customer.find(params[:customer_id])
  #   @point = Point.new(-point_params)
  #   @point.customer_id = @customer.id
  #   if @point.save
  #     redirect_to @customer
  #   else
  #     render 'show'
  #   end
  # end

  def add
  end

  private
  
  def point_params
    params.require(:point).permit(:point_total)
  end

end
