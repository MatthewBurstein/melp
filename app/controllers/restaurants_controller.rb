class RestaurantsController < ApplicationController

  def show
    @restaurant = Article.find(params[:id])
  end

  def new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  private
    def restaurant_params
      params.require(params.require(:restaurant).permit(:name, :description))
    end
end
