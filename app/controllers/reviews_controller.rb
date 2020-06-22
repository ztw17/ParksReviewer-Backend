class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews.with_attached_image
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  def create
    review = Review.create({
      content: params[:content], 
      visit_date: params[:visit_date], 
      rating: params[:rating], 
      user_id: params[:user_id], 
      park_id: params[:park_id], 
      image: params[:image]})
    render json: review
  end

  def update
    review = Review.find(params[:id])
    review.update({content: params[:content], 
      visit_date: params[:visit_date], 
      rating: params[:rating], 
      user_id: params[:user_id], 
      park_id: params[:park_id], 
      image: params[:image]})
    render json: review
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    render json: review
  end

  private

  def review_params
    params.require(:review).permit(:content, :visit_date, :rating, :user_id, :park_id, :image)
  end
end
