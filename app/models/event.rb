class Event < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :sport
  has_and_belongs_to_many :comments, through: :location_comments
  has_and_belongs_to_many :questions, through: :location_questions

  validates :name,  :presence => true
  validates :description,  :presence => true
end