class ImagesController < ApplicationController
	def index
		@images = Image.where(user: current_user)
	end

	def feed
		@images = []
		Follower.where(user: current_user).each do |follower|
			@images << User.find(follower.follower_id).images
			@images.order(created_at: :desc)
		end
	end
end
