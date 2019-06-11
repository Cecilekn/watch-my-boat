class AddColumnsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :check1, :boolean, default: nil
    add_column :bookings, :check2, :boolean, default: nil
    add_column :bookings, :check3, :boolean, default: nil
    add_column :bookings, :check4, :boolean, default: nil
    add_column :bookings, :check5, :boolean, default: nil
    add_column :bookings, :check6, :boolean, default: nil
    add_column :bookings, :check7, :boolean, default: nil
    add_column :bookings, :check8, :boolean, default: nil
    add_column :bookings, :comment2, :text
    add_column :bookings, :comment3, :text
  end
end
