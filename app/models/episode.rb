class Episode < ActiveRecord::Base
  	YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  	self.per_page = 12
  	validates :link, presence: true, format: YT_LINK_FORMAT
	def self.get_episodes
		channel = Yt::Channel.new id:  'UCKfAhPzKZn656FH0mIB29FQ'
		channel.episodes
	end

	def self.episodes_task
		channel = Yt::Channel.new id:  'UCKfAhPzKZn656FH0mIB29FQ'
		episodes = channel.videos
		dbase_eps = Episodes.all
		dbase_eps.each do |episode|
			if episodes.where(id: episode.uid).nil?
				Episodes.destroy(episode.id)	
			end
		end
		episodes.each do |episode|
			if !Episode.exists?(uid: episode.id)	
				Episode.create(
					uid: episode.id, 
					title: episode.title, 
					description: episode.description, 
					thumbnail: episode.thumbnail_url, 
					views: episode.view_count,
					published_at: episode.published_at,
					link: "https://www.youtube.com/embed/#{episode.id}"
					) 
			end
		end
	end
end
