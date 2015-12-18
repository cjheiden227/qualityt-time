desc "Grab YouTube Feed with the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  Episode.episodes_task
  puts "done"
end
