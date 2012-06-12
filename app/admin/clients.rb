ActiveAdmin.register Client do
  
  action_item only:[:show] do
    link_to('Nuevo Cliente', new_admin_client_path)
  end

#  
  filter :rut
  filter :razon_social
  filter :giro
  
  show do |client|
    attributes_table do 
      row :rut
      row :razon_social
      row :giro
      row :telefono do
        b client.telefono
      end
      row :direccion do 
        p "#{client.direccion}, #{client.comuna}, #{client.ciudad}"
      end      
    end
  end
#  
#  sidebar "Total Facturado", :only => :show do
#    table_for Invoice.where('client_id = ?', self.id) do
#      column :total_venta
#    end
#  end
#    
#  index :download_links => false do
#    selectable_column
#    column :rut, :sortable => false
#    column :razon_social
#    column :giro
#    column :email
#    column :modo_de_pago
#    column :saldo
#    
#    default_actions 
#  end
#  
#  form do |f|
#    f.inputs "Cliente" do
#      f.input :rut
#      f.input :razon_social
#      f.input :giro
#      f.input :email
#      f.input :telefono
#      f.input :representante
#      f.input :contacto, :hint => "Telefono de representante"
#      f.input :modo_de_pago, :as => :select, :collection => Payment.all, :input_html => {:id => "styled-select "}
#      f.input :credito_asignado
#      f.input :saldo
#      f.input :sucursal
#      
#    end
#    f.buttons
#  end
end
