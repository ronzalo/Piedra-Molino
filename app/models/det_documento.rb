class DetDocumento < ActiveRecord::Base
  belongs_to :product, :foreign_key => 'producto_id'
  belongs_to :factura_compra, :foreign_key => 'factura_compra_id'
  belongs_to :factura_venta, :foreign_key => 'factura_venta_id'
  belongs_to :guia_venta, :foreign_key => 'guia_venta_id'
  belongs_to :guia_compra, :foreign_key => 'guia_compra_id'
end
