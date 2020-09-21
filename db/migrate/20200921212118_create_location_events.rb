class CreateLocationEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :location_events do |t|
      t.integer :user_id
      t.integer :location_id
    end
  end
end
