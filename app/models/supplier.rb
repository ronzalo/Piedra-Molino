require 'valid_email'
class Supplier < ActiveRecord::Base
  attr_accessible :email, :rut, :nombre, :razon_social, :giro, :telefono, :contacto, :representante
  
  validates_presence_of :nombre, :razon_social
  
  validates :telefono, :numericality => true, 
                       :length => {:minimum => 7, :maximum => 11}
                       
  validates :rut, :presence => true,
                  :uniqueness => true
                    
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  
  
  
end


