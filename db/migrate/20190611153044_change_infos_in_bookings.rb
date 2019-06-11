class ChangeInfosInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :hour
    remove_column :bookings, :date
    add_column :bookings, :date, :datetime
  end
end
