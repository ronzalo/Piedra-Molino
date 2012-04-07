class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, :null => true
      t.integer :price, :null => true
      t.text :description
      t.integer :category_id
      t.timestamps
    end
  end
end
