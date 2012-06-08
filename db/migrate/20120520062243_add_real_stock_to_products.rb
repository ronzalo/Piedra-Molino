class AddRealStockToProducts < ActiveRecord::Migration
  def change
    add_column :products, :real_stock, :integer, :default => 0
    add_column :products, :maximum_stock, :integer
    add_column :products, :minimum_stock, :integer
  end
end
