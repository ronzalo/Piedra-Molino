class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :folio
      t.date :fecha_emision
      t.integer :client_id
      t.string :monto_escrito
      t.string :tipo_documento
      t.integer :total_venta

      t.timestamps
    end
  end
end
