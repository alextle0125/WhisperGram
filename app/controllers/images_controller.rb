class ImagesController < ApplicationController
	def index
		@images = Image.all
	end

	def feed
	end
end
