class Video < ActiveRecord::Base

	
	#uid
	#title
	#description
	#thumbnail
	#views
	#link


	def self.get_videos
		channel = Yt::Channel.new id:  'UCNMLkG2FIrhZIVMo70a4TIQ'
		channel.videos
	end

	def get_videos_task
		channel = Yt::Channel.new id:  'UCNMLkG2FIrhZIVMo70a4TIQ'
		videos = channel.videos
		videos.each do |video|
			unless Video.exists?(uid: video.id)	
				Video.new(
					uid: video.id, 
					title: video.title, 
					description: video.description, 
					thumbnail: video.thumbnail_url, 
					views: video.view_count, 
					link: video.link
					) 
			end
		end
	end
	private

end
