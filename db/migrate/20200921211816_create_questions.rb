class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :question_id
      t.integer :user_id
      t.datetime :question_date
      t.string :question_text
    end
  end
end
