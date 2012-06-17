class CreateSalesWaybills < ActiveRecord::Migration
  def change
    create_table :guias_ventas do |t|
      t.integer :folio
      t.date :fecha_emision
      t.integer :total_venta
      t.integer :cliente_id

      t.timestamps
    end
  end
end
