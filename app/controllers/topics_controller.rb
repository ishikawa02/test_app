class TopicsController < ApplicationController
	def new
	  @topic = Topic.new
	  @topic.thread_categories.build
	end

	def create
	  @topic = Topic.new(topic_params)
	  @topic.user_id = current_user.id
	  if @topic.save
		redirect_to topic_path(@topic)
	  else
		flash[:notice] = "Error"
		render :new
	  end
	end

	def index
	  @topics = Topic.all
	end

	def show
	  @topic = Topic.find(params[:id])
	  @response = Response.new
	end

	private
	def topic_params
		params.require(:topic).permit(:title, :body, {:category_ids=> [] })
	end
end
