class Invoice < ActiveRecord::Base
  TIPO = %w[Venta Compra]
  attr_accessible :folio, :fecha_emision, :monto_escrito, :client_id, :tipo_documento, :total_venta
  belongs_to :client
  before_create :folio
  
  def folio
    self.folio = self.id
  end
  
  def fecha_emision
    fecha_emision = Date.new(Time.now.year, Time.now.month, Time.now.day).to_datetime
    
#    Invoice.save
  end
  
end
