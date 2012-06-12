class CreateFacturaCompras < ActiveRecord::Migration
  def change
    create_table :factura_compras do |t|
      t.integer :folio
      t.date :fecha_emision
      t.integer :neto
      t.integer :total
      t.integer :proveedor_id

      t.timestamps
    end
  end
end
