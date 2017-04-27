class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order(:id).paginate(page: params[:page])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.valid?
      @restaurant.save
      redirect_to restaurants_path, success: 'Restaurant has been added'
    else
      render :new
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    respond_to do |format|
      format.js
      format.html do
        redirect_to restaurants_path, success: 'Restaurant has been deleted'
      end
    end
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :capacity, :opens_at, :closes_at)
    end
end