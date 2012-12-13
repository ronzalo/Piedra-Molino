ActiveAdmin.register Client do
  
  filter :nombre
  filter :empresa
  filter :email

  form do |f|
    f.inputs  do
      f.input :rut, :hint => 'Formato: 12345678-9'                                                                                                                                                                                                      
      f.input :nombre
      f.input :apellido
      f.input :empresa
      f.input :email
      f.input :direccion
      f.input :comuna
      f.input :ciudad
      f.input :telefono
      f.input :modo_pago
      f.input :saldo
      f.input :credito_asignado
    end  
    f.actions
  end

  index :download_links => false do
  	selectable_column
  	column :rut
  	column :nombre do |client|
  		p "#{client.nombre} #{client.apellido}"
  	end
  	column :saldo
  	column :empresa
  	column :email
  	default_actions
  end

end
