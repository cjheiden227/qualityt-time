class EpisodesController < ApplicationController
	def index
		@episodes = Episode.paginate(:page => params[:page]).order("published_at").reverse_order
	end
	
	def show
		@episode = Episode.find(params[:id])
	end

	private
		def episode_params
			params.require(:episode).permit(:uid)
		end
end
