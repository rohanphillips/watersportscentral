class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.integer :sport
      t.datetime :date
      t.integer :location
    end
  end
end
