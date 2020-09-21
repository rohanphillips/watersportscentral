class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.int :event_id
      t.string :name
      t.string :description
      t.int :sport
      t.datetime :date
      t.int :location
    end
  end
end
