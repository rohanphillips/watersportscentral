class Event < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :sport
end