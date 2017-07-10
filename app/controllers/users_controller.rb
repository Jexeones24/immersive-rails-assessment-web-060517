class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def show
    @user = User.find(user_params)
  end

  def edit
    @user = User.find(user_params)
    redirect_to user_path(@user)
  end

  def update
    @user = User.find(user_params)
    @user.update
  end

  def delete
    @user = User.find(user_params)
    @user.destroy
  end

  private

  def user_params
    params.permit(:user).require(:username, :password_digest)
  end
end
