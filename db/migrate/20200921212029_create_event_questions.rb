class CreateEventQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :event_questions do |t|
      t.int :event_id
      t.int :question_id
    end
  end
end
