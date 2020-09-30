class Comment < ApplicationRecord
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :events
  has_many :users

  validates :comment_text,  :presence => true
end