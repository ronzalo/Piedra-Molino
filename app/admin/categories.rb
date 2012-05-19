ActiveAdmin.register Category do
  config.comments = false

  action_item only:[:show] do
    link_to('Nueva Categoria', new_admin_category_path)
  end 
 	 
  filter :name
   
   
end
