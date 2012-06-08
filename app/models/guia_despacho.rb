class GuiaDespacho < ActiveRecord::Base

  TIPO = %w[Venta Compra] 
  attr_accessible :product_guias_attributes, :folio, :fecha_emision, :monto_escrito, :client_id, :tipo_documento, :total_venta
  has_many :product_guias
  accepts_nested_attributes_for :product_guias
  
  
  class << self
    def folio
      guia = GuiaDespacho.last
      current_folio = guia.nil? ? 0 : guia.id
      folio = current_folio + 1
    end
    
    def fecha_emision
      self.fecha_emision = Date.new(Time.now.year, Time.now.month, Time.now.day).to_datetime    
    end
    
#    def total_venta
#      total_venta = 0
#      self.product_guias.each do |i|
#        total_venta += i.product_id
#      end
#    total_venta
#    end
    
  end
  
  
  
  
  
  
end
