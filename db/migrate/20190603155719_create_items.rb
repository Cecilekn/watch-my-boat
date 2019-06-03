class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :package, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
