ActiveAdmin.register Client do
  
  filter :rut
  filter :modo_de_pago
  filter :email
    
  index :download_links => false do
    selectable_column
    column :rut, :sortable => false
    column :razon_social
    column :giro
    column :email
    column :modo_de_pago
    column :saldo
    
    default_actions 
  end
  
  form do |f|
    f.inputs "Cliente" do
      f.input :rut
      f.input :razon_social
      f.input :giro
      f.input :email
      f.input :telefono
      f.input :representante
      f.input :contacto, :hint => "Telefono de representante"
      f.input :modo_de_pago, :as => :select, :collection => [ "Credito", "Debito", "A plazo", "Trueque"]
      f.input :credito_asignado
      f.input :saldo
      f.input :sucursal
      
    end
    f.buttons
  end
end
