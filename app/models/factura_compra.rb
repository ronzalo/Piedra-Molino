class FacturaCompra < ActiveRecord::Base
  has_many :det_documento, :foreign_key => 'factura_compra_id'
  belongs_to :supplier, :foreign_key => 'proveedor_id'
  attr_accessible :proveedor_id, :fecha_emision, :folio
#  accepts_nested_attributes_for :det_documento
end
