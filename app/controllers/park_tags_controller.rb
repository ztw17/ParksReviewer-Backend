class ParkTagsController < ApplicationController

  def index
    park_tags = ParkTag.all
    render json: park_tags
  end

  def show
    park_tag = ParkTag.find(params[:id])
    render json: park_tag
  end

  def create
    park_tag = ParkTag.create(park_tag_params)
    render json: park_tag
  end

  def destroy
    park_tag = ParkTag.find(params[:id])
    park_tag.destroy
    render json:park_tag
  end

  private

    def park_tag_params
      params.require(:park_tag).permit(:park_id, :user_id)
    end
end
