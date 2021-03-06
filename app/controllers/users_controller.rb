class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Successfully Signed Up #{@user.username}"
      redirect_to root_path
    else
      render 'new'
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Your account was updated successfully"
      redirect_to root_path
    else
      render 'edit'
    end

  end
  def edit
    @user = User.find(params[:id])
  end
  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :name, :description)
  end
end