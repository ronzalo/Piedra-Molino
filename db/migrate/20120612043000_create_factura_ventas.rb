class CreateFacturaVentas < ActiveRecord::Migration
  def change
    create_table :factura_ventas do |t|
      t.integer :folio
      t.datetime :fecha_emision
      t.integer :neto
      t.integer :total
      t.integer :cliente_id

      t.timestamps
    end
  end
end
