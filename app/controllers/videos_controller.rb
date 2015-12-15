class VideosController < ApplicationController
	def index
		@videos = Video.get_videos

	end


end
