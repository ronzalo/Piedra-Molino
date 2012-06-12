class Client < Entity

#  set_table_name 'clientes'
attr_accessible :rut, :razon_social, :giro, :email, :nombre, :direccion, :comuna, :ciudad, :telefono, :contacto
has_many :factura_venta, :foreign_key => 'cliente_id'
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
#  validates :razon_social, :presence => true
#  validates :giro, :presence => true
#  validates :saldo, :presence => true, :numericality => true
#  
#  has_many :invoices, :dependent => :destroy
#  before_save :display_name
#  
  def to_s
    self.razon_social
  end
end
