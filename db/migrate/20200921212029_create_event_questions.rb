class CreateEventQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :event_questions do |t|
      t.integer :event_id
      t.integer :question_id
    end
  end
end
