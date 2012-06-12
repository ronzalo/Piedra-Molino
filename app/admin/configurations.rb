ActiveAdmin.register Configuration do
  menu :parent => "Administracion"
  
  action_item only:[:show] do
    link_to('Nueva Configuracion', new_admin_configuration_path)
  end
end
