class ParksController < ApplicationController

  def index
    parks = Park.all
    render json: parks
  end

  def show
    park = Park.find(params[:id])
    render json: park
  end

  def create
    park = Park.create({
      name: params[:name], 
      state: params[:state], 
      description: params[:description], 
      weather: params[:weather], 
      longitude: params[:longitude], 
      latitude: params[:latitude], 
      image: params[:image], 
      creator_id: params[:creator_id]})
    render json: park
  end

  def update
    park = Park.find(params[:id])
    park.update({
      name: params[:name], 
      state: params[:state], 
      description: params[:description], 
      weather: params[:weather], 
      longitude: params[:longitude], 
      latitude: params[:latitude], 
      image: params[:image], 
      creator_id: params[:creator_id]})
    render json: park
  end

  def destroy
    park = Park.find(params[:id])
    park.destroy
    render json: park
  end

  private

  def park_params
    params.require(:park).permit(:name, :state, :description, :weather, :longitude, :latitude, :image, :creator_id)
  end
end
