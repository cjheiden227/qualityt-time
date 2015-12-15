class Video < ActiveRecord::Base

	channel = Yt::Channel.new id:  'UCNMLkG2FIrhZIVMo70a4TIQ'
	before_create :set_video
	#uid
	#title
	#description
	#thumbnail
	#views
	#link

	def self.get_videos
		channel.videos
	end

	
	def set_video
		videos = channel.videos
		videos.each do |video|
			Video.create(
				uid: video.id, 
				title: video.title, 
				description: video.description, 
				thumbnail: video.thumbnail_url, 
				views: video.view_count, 
				link: video.link
				) unless Video.exists?(uid: video.id)	
		end
	end
end
