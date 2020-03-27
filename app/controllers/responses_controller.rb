class ResponsesController < ApplicationController
before_action :authenticate_user!
	def create
	  @topic = Topic.find(params[:topic_id])
	  @response = Response.new(response_params)
	  @response.user_id = current_user.id
	  @response.topic_id = @topic.id
	  if @response.save
	  	redirect_to topic_path(@topic)
	  else
	  	flash[:notice] = "Error"
	  	redirect_to topic_path(@topic)
	  end
	end

	private
	def response_params
		params.require(:response).permit(:comment)
	end

end
