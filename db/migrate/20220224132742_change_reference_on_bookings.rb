class ChangeReferenceOnBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :receptacles
    add_reference :bookings, :receptacle, null: false, foreign_key: true
  end
end
