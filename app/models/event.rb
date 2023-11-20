class Event < ApplicationRecord
  validates :location, presence: true
  validates :title, presence: true
  validates :date, presence: true
  validates :attendee_id, uniqueness: true

  belongs_to :creator, class_name: "User"
  has_many :event_details, foreign_key: :attended_event_id
  has_many :attendees, through: :event_details

  def past
    self.date.past?
  end

  def future
    self.date.future?
  end
end
