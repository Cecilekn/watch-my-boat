class ChangeSizeAndCategoryInBoats < ActiveRecord::Migration[5.2]
  def change
    remove_column :boats, :size
    remove_column :boats, :category
    add_reference :boats, :dimension, foreign_key: true
    add_reference :boats, :category, foreign_key: true
  end
end
