class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :provider, foreign_key: true
      t.references :booking, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
