desc "Grab YouTube Feed with the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  Video.get_videos_task
  puts "done"
end
