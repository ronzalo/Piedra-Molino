class CreateSalesInvoices < ActiveRecord::Migration
  def change
    create_table :facturas_ventas do |t|
      t.integer :folio
      t.date :fecha_emision
      t.integer :neto
      t.integer :total_venta
      t.integer :cliente_id

      t.timestamps
    end
  end
end
