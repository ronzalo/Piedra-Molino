ActiveAdmin.register Payment do
   config.comments = false
   menu :parent => "Administracion", :priority => 7
	 	 
   filter :name, :label => "Nombre"
   
   index do
     column :name
     default_actions
   end   
end
