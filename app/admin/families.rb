ActiveAdmin.register Family do

  filter :category, :label => "Categoria"
  filter :name, :label => "Nombre"

   form  do |f|
   f.inputs "Familia" do
     f.input :name
     f.input :category, :label => "Categoria"
     end
   f.inputs "Productos" do
    f.has_many :products do |p|
      p.input :nombre
      p.input :precio
      p.input :costo_venta
      p.input :real_stock
    end
  end  
   f.buttons
   end
   
   index do
     selectable_column
     column "Nombre", :name
     column "Categoria", :category, :sortable => false
     default_actions
   end
   
   show :title => :name do |f|
     attributes_table do
       row :name
       row :category
     end
   end
end
