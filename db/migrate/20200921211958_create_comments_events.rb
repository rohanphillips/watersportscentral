class CreateCommentsEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :comments_events do |t|
      t.integer :event_id
      t.integer :comment_id
    end
  end
end
