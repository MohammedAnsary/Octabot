class UsersController < ApplicationController
  def index
	   @users = User.all
  end
   def edit
	   @user = current_user
	 @categories = Category.all
  end
  def show
    @user = User.find(params[:id])
 @categories = Category.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :signature )
  end
end
