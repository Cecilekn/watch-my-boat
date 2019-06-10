class AddInfosToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :manager_id, :integer
  end
end
