class AddDimensionAndCategoryInPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :dimension, foreign_key: true
    add_reference :packages, :category, foreign_key: true
  end
end
