class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.float :latitude
      t.float :longitude
      t.references :owner, foreign_key: { to_table: :users }
      t.references :manager, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
