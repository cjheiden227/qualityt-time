class HomeController < ApplicationController
	def index
		@latest_episode =  Episode.order("published_at").last
	end
end
