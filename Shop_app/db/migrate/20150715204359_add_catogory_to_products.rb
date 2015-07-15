class AddCatogoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :catogory, :string
  end
end
