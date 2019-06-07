class AddKindToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :kind, :string
  end
end
