class CreateDetDocumentos < ActiveRecord::Migration
  def change
    create_table :det_documentos do |t|
      t.integer :cantidad
      t.integer :total
      t.integer :factura_compra_id
      t.integer :factura_venta_id
      t.integer :guia_venta_id
      t.integer :guia_compra_id
      t.integer :producto_id

      t.timestamps
    end
  end
end
