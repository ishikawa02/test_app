class TopsController < ApplicationController

	def top
	  @topics = Topic.all.reverse_order
	end
end
