class CreateProducts < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :codigo
      t.text :descripcion
      t.integer :precio, :null => true
      t.integer :costo
      t.integer :categoria_id
      t.integer :stock_real
      t.integer :stock_minimo
      t.integer :stock_maximo
      
      t.timestamps
    end
  end
end
