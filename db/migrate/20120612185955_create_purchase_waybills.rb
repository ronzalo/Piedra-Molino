class CreatePurchaseWaybills < ActiveRecord::Migration
  def change
    create_table :guias_compras do |t|
      t.integer :folio
      t.date :fecha_emision
      t.integer :total_venta
      t.integer :proveedor_id

      t.timestamps
    end
  end
end
