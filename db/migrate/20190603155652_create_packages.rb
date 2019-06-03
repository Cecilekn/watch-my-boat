class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :title
      t.string :description
      t.integer :price_cents
      t.string :price_currency

      t.timestamps
    end
  end
end
