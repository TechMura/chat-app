class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      # :editと記入することでeditアクションを指定している
      render :edit 
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
