class CreateQuestionsLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :questions_locations do |t|
      t.integer :location_id
      t.integer :question_id
    end
  end
end
