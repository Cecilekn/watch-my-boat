class ChangeColumnsInPackages < ActiveRecord::Migration[5.2]
  def change
    remove_column :packages, :price_currency
    remove_column :packages, :price_cents
    add_monetize :packages, :price, currency: { present: false }
  end
end
