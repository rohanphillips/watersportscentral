class Comment < ApplicationRecord
  has_many :comments_events
  has_many :events, through: :comments_events

  has_many :comments_locations
  has_many :locations, through: :comments_events

  validates :comment_text,  :presence => true
end