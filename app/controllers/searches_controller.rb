class SearchesController < ApplicationController
before_action :authenticate_user!
	def search
	  @topics= Topic.search(params[:search]).page(params[:page]).reverse_order
	end
end
