class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all(restaurant_params)
  end

  def new
  end

  def show
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end
end
