class Supplier < ActiveRecord::Base
#  require 'valid_email'
  set_table_name 'proveedores'
  has_many :purchase_invoices, :foreign_key => 'proveedor_id'
  attr_accessible :rut, :razon_social, :giro, :nombre, :direccion, :modo_pago, :comuna, :ciudad, :telefono, :contacto, :email, :saldo, :credito_asignado
  
  validates :razon_social, :presence => true
  
  validates :telefono, :numericality => true, 
                       :length => {:minimum => 7, :maximum => 11}
                      
  validates :rut, :presence => true,
                  :uniqueness => true

  validate :valida_rut              
    
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  
  def to_s  
    self.razon_social
  end

  def valida_rut
    if(rut.match("-"))
      arrayrut = rut.to_s.split("-")
      digit = arrayrut[1]
      rut = arrayrut[0]
  else
    errors.add(:rut, "El formato es incorrecto")
  end   
    if !rut.blank? 
      largo = rut.length
      if (largo<7 or largo>9)
        errors.add(:rut, "El valor ingresado no es valido .")
      elsif digit.blank?
        errors.add(:digit, "(Rut) : debe ingresar el digito verificador.")
      else
        sum = 0
        for i in 1..largo 
          if i<7
            val = rut[largo-i].to_i * (i+1)
          else
            val = rut[largo-i].to_i * (i-5)
          end
          sum = sum + val
        end
        res = 11 - (sum%11)
        if res==11
          digito = "0"
        elsif res==10
          digito = "K"
        else
          digito = res.to_s
        end
        if digit.upcase!=digito
          errors.add(:rut, "El valor ingresado no es valido.")
        end
      end
    end
  end
end
