class Invoice < ActiveRecord::Base
  TIPO = %w[Venta Compra]
  attr_accessible :folio, :fecha_emision, :monto_escrito, :client_id, :tipo_documento, :total_venta
  belongs_to :client
  before_create :set_folio
  
  def set_folio
    invoice = Invoice.last
    current_folio = invoice.nil? ? 0 : invoice.id
    folio = current_folio + 1
    invoice.save
  end
  
  def fecha_emision
    fecha_emision = Date.new(Time.now.year, Time.now.month, Time.now.day).to_datetime
    
#    Invoice.save
  end
  
end
