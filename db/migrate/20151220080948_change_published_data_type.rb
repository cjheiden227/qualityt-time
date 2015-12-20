class ChangePublishedDataType < ActiveRecord::Migration
  def change
  	remove_column :episodes, :published_at, :date
  	add_column :episodes, :published_at, :timestamp
  end
end
