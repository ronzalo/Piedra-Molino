class CreatePurchaseInvoices < ActiveRecord::Migration
  def change
    create_table :facturas_compras do |t|
      t.integer :folio
      t.date :fecha_emision
      t.integer :total_venta
      t.integer :proveedor_id

      t.timestamps
    end
  end
end
