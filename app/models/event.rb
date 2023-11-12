class Event < ApplicationRecord
  validates :location, presence: true
  validates :title, presence: true
end
