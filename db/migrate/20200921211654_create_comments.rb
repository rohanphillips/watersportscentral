class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.datetime :comment_date
      t.string :comment_text
    end
  end
end
