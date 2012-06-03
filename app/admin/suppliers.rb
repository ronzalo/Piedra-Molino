ActiveAdmin.register Supplier do
  
#  batch_action :destroy, true
  
  form do |f|  
  f.inputs "Proveedor" do
    f.input :nombre
    f.input :rut, :hint => 'Sin guion ni puntos'
    f.input :email
    f.input :razon_social
    f.input :giro
    f.input :telefono
    f.input :representante
    f.input :contacto, :hint => 'Telefono del representante'
    
    end
    f.buttons
  end
  
  index do
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
