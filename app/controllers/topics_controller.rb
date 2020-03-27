class TopicsController < ApplicationController
before_action :authenticate_user!
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
	  @topics = Topic.page(params[:page]).reverse_order
	end

	def show
	  @topic = Topic.find(params[:id])
	  @response = Response.new
	  @responses = @topic.responses.page(params[:page])
	end

	private
	def topic_params
		params.require(:topic).permit(:title, :body, {:category_ids=> [] })
	end
end
