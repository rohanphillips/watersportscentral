class CreateCommentsLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :comments_locations do |t|
      t.integer :location_id
      t.integer :comment_id
    end
  end
end
