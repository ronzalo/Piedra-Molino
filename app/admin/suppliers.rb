ActiveAdmin.register Supplier do
  filter :rut
  filter :razon_social
  filter :email  

  form do |f|
    f.inputs  do
      f.input :rut, :hint => 'Formato: 12345678-9'                                                                                                                                                                                                      
      f.input :razon_social
      f.input :giro
      f.input :email
      f.input :direccion
      f.input :comuna
      f.input :ciudad
      f.input :telefono
      f.input :modo_pago
      f.input :saldo
      f.input :credito_asignado
      f.input :contacto
    end  
    f.actions
  end

  index :download_links => false do
    selectable_column
  	column :rut
  	column :razon_social
  	column :giro
  	column :email
  	default_actions
  end
end
