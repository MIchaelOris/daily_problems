class AddStockToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :stock, :integer
    add_column :products, :stock, :integer, :boolean, 

  end
end
