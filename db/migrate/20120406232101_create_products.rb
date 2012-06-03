class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre, :null => true
      t.text :descripcion
      t.integer :precio, :null => true
      t.integer :costo_venta
      t.integer :family_id
      t.string :codigo
      t.string :codigo_barra
      t.string :ubicacion
     
      t.timestamps
    end
  end
end
