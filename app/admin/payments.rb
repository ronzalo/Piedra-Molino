ActiveAdmin.register Payment do

  action_item only:[:show] do
    link_to('Nueva Metodo de Pago', new_admin_payment_path)
  end

  filter :nombre
  
  menu :parent => "Administracion"
  
  form do |f|
    f.inputs "Pagos" do
     f.input :nombre 
    end    
    f.actions
  end
  
  index :download_links => false do
    selectable_column
    column :nombre    
    default_actions 
  end

end
