class AddInfoToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :hour, :date
  end
end
