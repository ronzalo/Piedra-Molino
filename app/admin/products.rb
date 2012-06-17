ActiveAdmin.register Product do
#  # Hacer menu desplegable, holi es el nombre mostrado
#  # menu :parent =>  "Holi"
#  # Prioridad en el orden del menu
#  # menu :priority => 1
#  # Cambiar nombre de menu
#  # menu :label => "caca"
#  # :download_links => false para ocultar links en index  
#  # menu :label => "Productos" 
#  
# controller do
#    load_and_authorize_resource
#  end 
#  
# config.comments = false
# 
  #Filtros
filter :descripcion
filter :category, :label => "Categoria"
filter :precio
filter :stock_real
# 
# # Productos por pagina en index
before_filter :only => :index do
  @per_page = 10
end
# 
scope :all, :default => true
 # Pestaña con productos bajo stock 
scope :critico do |products|
   products.where("stock_real < stock_minimo")
end 
#  
 form  do |f|
   f.inputs "Product" do
     f.input :codigo
     f.input :descripcion, :input_html => {:rows => 10, :cols => 5}
     f.input :precio, :input_html => {:class => "input_mediano"}
     f.input :costo, :input_html => {:class => "input_mediano"}
     f.input :stock_maximo, :label => "Stock Maximo", :input_html => {:class => "input_mediano"}
     f.input :stock_minimo , :label => "Stock Minimo", :input_html => {:class => "input_mediano"}
     f.input :category, :label => "Categoria"     
     end
   f.buttons
 end
#    
##  sidebar :stats, :only => :show do
##     product = Product.find(params[:id])
##     render :partial => 'graph'    
##  end

   index :download_links => false do
    selectable_column
    column :descripcion do |product|
      link_to product.descripcion, [:admin, product]
    end
    column :precio, :sortable => :precio do |product|
      div :class => "precio" do
        number_to_currency product.precio, :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => ","
      end  
    end
    column :stock_real     
    default_actions
  end

  show :title => :descripcion do |product|    
    attributes_table do
        row :descripcion
        row :precio
        row :stock_real do
          b product.stock_real
        end
        row :stock_maximo
        row :stock_minimo
    end         
  end

 
end
