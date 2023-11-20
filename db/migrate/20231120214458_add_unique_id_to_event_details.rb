class AddUniqueIdToEventDetails < ActiveRecord::Migration[7.0]
  def change
    add_index :event_details, [:attendee_id, :attended_event_id], unique: true
  end
end
