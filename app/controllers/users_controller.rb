class UsersController < ApplicationController
  # before_action :user_params, only:[:index, :edit, :update]
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new()
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # redirect_to root_url
    else
      render 'new'
    end
  end


  def edit
    @user = User.find(params[:id])
  end

  # def update
  #   @user = User.find(params[:id])
  #   if @user.update(user_params)
  #     flash[:success] = "Profile updated"
  #     redirect_to @user
  #   else
  #     render 'edit'
  #   end
  # end
  #
  # def destroy
  #   User.find(params[:id]).destroy
  #   flash[:success] = "User deleted"
  #   redirect_to users_url
  # end

  private

  # def user_params
  #   params.require(:user).permit(:name, :email)
  #   #, :password, :password_confirmation)
  # end
end