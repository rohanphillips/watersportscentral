class CreateQuestionsEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :questions_events do |t|
      t.integer :event_id
      t.integer :question_id
    end
  end
end
