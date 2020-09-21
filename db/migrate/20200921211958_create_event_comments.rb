class CreateEventComments < ActiveRecord::Migration[6.0]
  def change
    create_table :event_comments do |t|
      t.integer :event_id
      t.integer :comment_id
    end
  end
end
