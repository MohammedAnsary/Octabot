class UsersController < ApplicationController
  def index
	   @users = User.all
  end
  def update
	   @user = User.find(params[:id])
	if user_params[:name].blank?
	@user.update_attribute(:name, user_params[:name])
end
	if user_params[:email] !=@user.email
	@user.update_attribute(:email, user_params[:email])
end
	if user_params[:password].blank?
	@user.update_attribute(:password, user_params[:password])
end
	if user_params[:signature].blank?
	@user.update_attribute(:name, user_params[:signature])
end
 redirect_to posts_path
  end
   def edit
	   @user = User.find(params[:id])
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
