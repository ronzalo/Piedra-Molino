ActiveAdmin.register Supplier do
  
#  batch_action :destroy, true

  action_item only:[:show] do
    link_to('Nuevo Proveedor', new_admin_supplier_path)
  end
  
  form do |f|  
  f.inputs "Proveedor" do
    f.input :nombre
    f.input :rut, :hint => 'Sin guion ni puntos'
    f.input :email
    f.input :razon_social
    f.input :giro
    f.input :telefono
    f.input :contacto
    
    end
    f.buttons
  end
  
  index :download_links => false do
    selectable_column
    column :id
    column :nombre 
    column :rut, :sortable => false
    column :razon_social
    column :giro
    column :telefono
          
    default_actions
  end 
  
  filter :nombre
  filter :rut
  filter :razon_social
  filter :giro
end
