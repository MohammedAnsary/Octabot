class CategoriesController < ApplicationController
  def index
	@category =params[:name]
	@posts=  Post.all

  end

  def edit
  end

  def new
  end

  def show
  end
  def category_params
  params.require(:category).permit(:name)
  end
end
