ActiveAdmin.register Category do
  config.comments = false

  action_item only:[:show] do
    link_to('Nueva Categoria', new_admin_category_path)
  end 
 	 
  filter :nombre
  
#  sidebar "Productos", :only => :show do
#    table_for Product.where(:family_id => category.id) do
#      column "Nombres", :name do |product|
#        link_to product.name, [:admin, product]
#      end
#    end
#  end
  
  form do |f|
  
  f.inputs "Categoria" do
    f.input :nombre
  end
  f.inputs "Productos" do
    f.has_many :products do |p|
      p.input :descripcion
      p.input :precio
      p.input :stock_minimo
      p.input :stock_maximo
    end
  end
  
  f.buttons
end
  
 
   
   
end
