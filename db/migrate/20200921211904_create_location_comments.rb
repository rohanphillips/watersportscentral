class CreateLocationComments < ActiveRecord::Migration[6.0]
  def change
    create_table :location_comments do |t|
      t.int :location_id
      t.int :comment_id
    end
  end
end
