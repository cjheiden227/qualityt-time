class HomeController < ApplicationController
	def index
		@latest_episode =  Episode.order("published_at").last
		@latest_posts =  Monologue::Post.order("published_at DESC").limit(6)
	end
end
