class ImagesController < ApplicationController
	def index
		@images = Image.where(user: current_user)
	end

	def feed
		@images = current_user.images
		Follower.where(user_id: current_user.id).each do |follower|
			@images << User.find(follower.follower_id).images
		end
		@images = @images.order(created_at: :desc)
	end
end
