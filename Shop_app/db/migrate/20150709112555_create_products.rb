class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :type_id
      t.string :name
      t.string :designer
      t.integer :price
      t.string :img

      t.timestamps null: false
    end
  end
end
