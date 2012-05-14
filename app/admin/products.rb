ActiveAdmin.register Product do
  # Hacer menu desplegable, holi es el nombre mostrado
  # menu :parent =>  "Holi"
  # Prioridad en el orden del menu
  # menu :priority => 1
  # Cambiar nombre de menu
  # menu :label => "caca"
 menu :label => "Productos" 
 config.comments = false
 
	#Filtros
  filter :name, :label => "Nombre"
	filter :category, :label => "Categoria"
	filter :price, :label => "Precio"
	# Productos por pagina en index
 	before_filter :only => :index do
    @per_page = 10
  end 
  
  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Product", :multipart => true do
        f.input :name, :label => "Nombre"
        f.input :price, :label => "Precio" 
        f.input :description, :input_html => {:rows => 5, :cols => 10}, :label => "Descripcion"
        f.input :category, :label => "Categoria"
        f.input :image, :label => "Imagen", :as => :file, :hint =>  f.object.image? ? f.template.image_tag(f.object.image.url(:thumb)) : f.template.content_tag(:span, "Todavia no sube una imagen")
     end
        f.buttons
    end
  
  show do |product|
    attributes_table do
        row :name
        row :price
        row :category_id
        row :description 
        row :image do
        	image_tag(product.image.url(:medium))
        end
    end        
  end

  index do
    column "Nombre",:name do |product|
      link_to product.name, [:admin, product]
    end
    column "Categoria", :category, :sortable => false
    column "Creado", :created_at
    column "Precio", :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price, :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => ","
      end
    end
    column "Imagen", :image do |product|
          product.image? ? image_tag(product.image.url(:thumb)) : content_tag(:span, "Sin imagen")
    end      
    default_actions
  end
end
