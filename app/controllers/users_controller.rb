class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password, :username)
  end
  
end
