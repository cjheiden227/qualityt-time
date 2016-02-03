desc "Grab YouTube Feed with the Heroku scheduler add-on"
task :update_episodes => :environment do
  puts "Updating episodes..."
  Episode.episodes_task
  puts "done"
end
