class Location < ApplicationRecord
  belongs_to :user
  has_many :events
  has_and_belongs_to_many :comments, through: :location_comments
  has_and_belongs_to_many :questions, through: :location_questions
end