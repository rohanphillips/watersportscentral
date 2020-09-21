class CreateLocationEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :location_events do |t|
      t.int :user_id
      t.int :location_id
    end
  end
end
