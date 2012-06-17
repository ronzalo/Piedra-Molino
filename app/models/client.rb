class Client < ActiveRecord::Base
  set_table_name 'clientes'
  has_many :sales_invoices, :foreign_key => 'cliente_id' 
  attr_accessible :rut, :nombre, :apellido, :empresa, :email, :direccion, :comuna, :ciudad, :telefono, :saldo, :modo_pago, :credito_asignado
  
  validates :rut, :presence => true, :uniqueness => true
  validates :nombre, :apellido, :empresa, :email, :presence => true
  validate :valida_rut     

  def to_s
    "#{self.nombre} #{self.apellido}"
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
