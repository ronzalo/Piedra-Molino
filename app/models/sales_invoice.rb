class SalesInvoice < ActiveRecord::Base
  set_table_name 'facturas_ventas'
  has_many :det_documento, :foreign_key => 'factura_venta_id'
  belongs_to :client, :foreign_key => 'cliente_id'
  attr_accessible :cliente_id, :total_venta, :folio, :fecha_emision, :neto, :det_documento_attributes
  accepts_nested_attributes_for :det_documento
  
  
  def folio
    self.id
  end
  
  def total_venta
    if self.neto?
      self.neto * 1.19
    end
  end
end
