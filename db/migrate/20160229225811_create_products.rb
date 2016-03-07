class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description_short, limit: 50
      t.string :how_work
      t.string :name
      t.float :price
      t.references :category, index: true, foreign_key: true
      t.string :photo

      t.timestamps null: false
    end
  end
end
