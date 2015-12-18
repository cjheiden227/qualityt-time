class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :uid
      t.string :title
      t.string :description
      t.string :thumbnail
      t.integer :views
      t.string :link

      t.timestamps null: false
    end
    add_index :videos, :uid
  end
end
