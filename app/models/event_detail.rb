class EventDetail < ApplicationRecord
  belongs_to :attended_event, class_name: "Event"
  belongs_to :attendee, class_name: "User"

  validates :attendee_id, uniqueness: { scope: :attended_event_id, message: "You are already attending this event." }

end
