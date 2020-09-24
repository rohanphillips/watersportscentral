class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :sport
      t.string :name
      t.string :description      
      t.datetime :date      
    end
  end
end
