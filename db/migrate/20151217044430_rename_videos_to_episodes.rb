class RenameVideosToEpisodes < ActiveRecord::Migration
  def change
  	rename_table :videos, :episodes
  end
end
