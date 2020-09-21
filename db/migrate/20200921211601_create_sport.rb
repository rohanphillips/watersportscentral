class CreateSport < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.integer :sport_id
      t.string :name
      t.string :description
    end
  end
end
