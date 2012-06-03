ActiveAdmin.register Product do
  # Hacer menu desplegable, holi es el nombre mostrado
  # menu :parent =>  "Holi"
  # Prioridad en el orden del menu
  # menu :priority => 1
  # Cambiar nombre de menu
  # menu :label => "caca"
  # :download_links => false para ocultar links en index  
  # menu :label => "Productos" 
  
 config.comments = false
 
	#Filtros
 filter :nombre
 filter :precio
 filter :real_stock
 
	# Productos por pagina en index
 before_filter :only => :index do
   @per_page = 10
 end
 
 scope :all, :default => true
  # Pestaña con productos bajo stock 
 scope :critico do |products|
    products.where("real_stock < minimum_stock")
 end 
  
 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Product", :multipart => true do
     f.input :nombre, :input_html => {:class => "input_mediano"}
     f.input :precio, :input_html => {:class => "input_mediano"}
     f.input :costo_venta, :input_html => {:class => "input_mediano"}
     f.input :real_stock, :label => "Stock", :input_html => {:class => "input_mediano"}
     f.input :maximum_stock, :label => "Stock Maximo", :input_html => {:class => "input_mediano"}
     f.input :minimum_stock , :label => "Stock Minimo", :input_html => {:class => "input_mediano"}
     f.input :family, :label => "Familia"
     f.input :descripcion, :as => :html_editor, :input_html => {:rows => 10, :cols => 5} 
     f.input :image, :as => :file, :hint =>  f.object.image? ? f.template.image_tag(f.object.image.url(:thumb)) : f.template.content_tag(:span, "Imagen Opcional")
     end
        f.buttons
    end
    
#  sidebar :stats, :only => :show do
#  	 product = Product.find(params[:id])
#     render :partial => 'graph'		 
#  end

   index :download_links => false do
    selectable_column
    column :nombre do |product|
      link_to product.nombre, [:admin, product]
    end
    column :precio, :sortable => :precio do |product|
      div :class => "precio" do
        number_to_currency product.precio, :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => ","
      end  
    end
    column :real_stock     
    default_actions
  end

  show :title => :nombre do |product|  	
    attributes_table do
        row :nombre
        row :precio
        row :real_stock do
          b product.real_stock
        end
        row :descripcion do
          simple_format product.descripcion
        end
        row :image do
        	image_tag(product.image.url(:medium))
        end
    end         
  end

 
end
