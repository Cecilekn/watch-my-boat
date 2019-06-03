class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.references :manager, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
