ActiveAdmin.register Configuration do
  menu :parent => "Administracion"
  
  filter :nombre
  filter :valor

  index :download_links => false do
  	selectable_column
  	column :nombre
  	column :valor
  	default_actions
  end

  action_item only:[:show] do
    link_to('Nueva Configuracion', new_admin_configuration_path)
  end
end
