class DetDocumento < ActiveRecord::Base
  belongs_to :product, :foreign_key => 'producto_id'
  belongs_to :purchase_invoice, :foreign_key => 'factura_compra_id'
  belongs_to :sales_invoice, :foreign_key => 'factura_venta_id'
  belongs_to :sales_waybill, :foreign_key => 'guia_venta_id'
  belongs_to :purchase_waybill, :foreign_key => 'guia_compra_id'
  
  attr_accessible :producto_id, :cantidad, :total

  
end
