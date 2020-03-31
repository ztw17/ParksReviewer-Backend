class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create({first_name: params[:first_name], last_name: params[:last_name], username: params[:username], email: params[:email], password: params[:password], image: params[:image]})
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update({first_name: params[:first_name], last_name: params[:last_name], username: params[:username], email: params[:email], password: params[:password], image: params[:image]})
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :image)
  end
end
