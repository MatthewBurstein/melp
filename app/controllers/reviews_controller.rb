class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to restaurant_path(@restaurant)
    end
  end

  private
  def review_params
    params.require(:review).permit(:reviewer, :score, :body)
  end
end