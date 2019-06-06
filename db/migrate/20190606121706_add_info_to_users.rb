class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :owner_subscribed, :boolean
  end
end
