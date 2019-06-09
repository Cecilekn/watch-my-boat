class ChangeInfoInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :status
    add_column :bookings, :completed, :boolean, default: false
  end
end
