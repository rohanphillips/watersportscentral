class CreateLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.int :location_id
      t.string :name
      t.string :description
      t.string :location_info
    end
  end
end
