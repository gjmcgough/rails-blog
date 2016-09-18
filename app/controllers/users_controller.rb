class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: "show", id: @user.id
    else
      render "new"
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
