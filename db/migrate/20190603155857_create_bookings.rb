class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :boat, foreign_key: true
      t.string :status
      t.date :date
      t.references :package, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
