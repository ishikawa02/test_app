class ResponsesController < ApplicationController

	def create
	  @topic = Topic.find(params[:post_id])
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

end
