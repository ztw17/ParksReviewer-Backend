class FavoritesController < ApplicationController

  def index
    favorites = Favorite.all
    render json: favorites
  end

  def show
    favorite = Favorite.find(params[:id])
    render json: favorite
  end

  def create
    favorite = Favorite.create(user_id: params[:user_id], park_id: params[:park_id])
    render json: favorite
  end

  def update
    favorite = Favorite.find(params[:id])
    favorite.update({user_id: params[:user_id], park_id: params[:park_id]})
    render json: favorite
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    render json: favorite
  end

  private

    def favorite_params
      params.require(:favorite).permit(:user_id, :park_id)
    end
end
