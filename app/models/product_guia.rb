class ProductGuia < ActiveRecord::Base
  attr_accessible :product_id, :guia_despacho_id, :cantidad, :sub_total
  belongs_to :guia_despacho
  belongs_to :product  
  
  def sub_total
    self.cantidad
  end
end
