ActiveAdmin.register Category do
   config.comments = false
   menu :label => "Categoria"
	 action_item only:[:show] do
    link_to('Nueva Categoria', new_admin_category_path)
   end 
	 
	 	 
   filter :name, :label => "Nombre"
   
   
end
