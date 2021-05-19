class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:index, :new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @reviews = Review.find(params[:id])
    @reviews.destroy
    redirect_to restaurant_path(@reviews.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
