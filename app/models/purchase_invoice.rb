class PurchaseInvoice < ActiveRecord::Base
  set_table_name 'facturas_compras'
  has_many :det_documento, :foreign_key => 'factura_compra_id'
  belongs_to :supplier, :foreign_key => 'proveedor_id'
end
