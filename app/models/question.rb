class Question < ApplicationRecord
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :events

  validates :question_text,  :presence => true
end