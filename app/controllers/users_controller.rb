class UsersController < ApplicationController

  def new
    redirect_to home_path if current_user
    @user = User.new
  end
  def create
    binding.pry
    @user = User.new(user_params)
    if @user.save
      redirect_to sign_in_path
    else
      render :new
    end
  end
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
