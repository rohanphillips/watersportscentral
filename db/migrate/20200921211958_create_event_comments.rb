class CreateEventComments < ActiveRecord::Migration[6.0]
  def change
    create_table :event_comments do |t|
      t.int :event_id
      t.int :comment_id
    end
  end
end
