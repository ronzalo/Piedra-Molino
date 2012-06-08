ActiveAdmin.register Category do
  config.comments = false

  action_item only:[:show] do
    link_to('Nueva Categoria', new_admin_category_path)
  end 
 	 
  filter :name
  
#  sidebar "Productos", :only => :show do
#    table_for Product.where(:family_id => category.id) do
#      column "Nombres", :name do |product|
#        link_to product.name, [:admin, product]
#      end
#    end
#  end
  
  form do |f|
  
  f.inputs "Categoria" do
    f.input :name
  end
  f.inputs "Productos" do
    f.has_many :products do |p|
      p.input :nombre
      p.input :precio
      p.input :real_stock
      p.input :minimum_stock
      p.input :maximum_stock
    end
  end
  
  f.buttons
end
  
 
   
   
end
