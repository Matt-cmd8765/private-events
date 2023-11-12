class Event < ApplicationRecord
  validates :location, presence: true
  validates :title, presence: true
  validates :date, presence: true

  belongs_to :creator, class_name: "User"
end
