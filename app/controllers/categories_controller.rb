class CategoriesController < ApplicationController

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to new_topic_path
		else
			flash[:notice] = "Error"
			redirect_to new_category_path
		end
	end

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end

	private
	  def category_params
	  	params.require(:category).permit(:name)
	  end
end
