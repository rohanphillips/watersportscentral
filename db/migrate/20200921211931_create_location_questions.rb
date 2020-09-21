class CreateLocationQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :location_questions do |t|
      t.int :location_id
      t.int :question_id
    end
  end
end
