class Client < ActiveRecord::Base
  attr_accessible :contacto, :display_name, :credito_asignado, :email, :giro, :modo_de_pago, :razon_social, :representante, :rut, :saldo, :sucursal, :telefono
  validates :telefono, :numericality => true, 
                       :length => {:minimum => 7, :maximum => 11}
                       
  validates :rut, :presence => true,
                  :uniqueness => true
                    
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :razon_social, :presence => true
  validates :giro, :presence => true
  validates :saldo, :presence => true, :numericality => true
  before_save :display_name
  
  def display_name
    self.display_name = self.razon_social
  end
end
