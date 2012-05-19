ActiveAdmin.register Product do
  # Hacer menu desplegable, holi es el nombre mostrado
  # menu :parent =>  "Holi"
  # Prioridad en el orden del menu
  # menu :priority => 1
  # Cambiar nombre de menu
  # menu :label => "caca"
# menu :label => "Productos" 
 config.comments = false
 
	#Filtros
 filter :name
 filter :category
 filter :price
	# Productos por pagina en index
 before_filter :only => :index do
   @per_page = 10
 end 
  
 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Product", :multipart => true do
     f.input :name
     f.input :price 
     f.input :description, :input_html => {:rows => 5, :cols => 10}
     f.input :category
     f.input :image, :as => :file, :hint =>  f.object.image? ? f.template.image_tag(f.object.image.url(:thumb)) : f.template.content_tag(:span, "Todavia no sube una imagen")
     end
        f.buttons
    end
    
  sidebar :stats, :only => :show do
  	 @product = Product.find(params[:id])
     render :partial => 'graph'		 
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
    column :name do |product|
      link_to product.name, [:admin, product]
    end
    column :category, :sortable => false
    column :created_at
    column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price, :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => ","
      end
    end
    column :image do |product|
          product.image? ? image_tag(product.image.url(:thumb)) : content_tag(:span, "Sin imagen")
    end      
    default_actions
  end
end
