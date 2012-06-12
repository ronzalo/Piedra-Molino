require 'valid_email'
class Supplier < Entity
#  set_table_name 'proveedores'
  has_many :factura_compra, :foreign_key => 'proveedor_id'
attr_accessible :rut, :razon_social, :giro, :nombre, :direccion, :comuna, :ciudad, :telefono, :contacto, :email
#  validates_presence_of :nombre, :razon_social
#  
#  validates :telefono, :numericality => true, 
#                       :length => {:minimum => 7, :maximum => 11}
#                       
#  validates :rut, :presence => true,
#                  :uniqueness => true
#                    
#  validates :email, :presence => true, 
#                    :length => {:minimum => 3, :maximum => 254},
#                    :uniqueness => true,
#                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  
  def to_s  
    self.razon_social
  end
  
end


