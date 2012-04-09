ActiveAdmin.register Product do
  # Hacer menu desplegable, holi es el nombre mostrado
  # menu :parent =>  "Holi"
  # Prioridad en el orden del menu
  # menu :priority => 1
 config.comments = false 
  
  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Product", :multipart => true do
        f.input :name
        f.input :price
        f.input :description, :input_html => {:rows => 5, :cols => 10}
        f.input :category
        f.input :image, :as => :file, :hint => f.object.image.nil? ? f.template.content_tag(:span, "No Image Yet"): f.template.image_tag(f.object.image.url(:thumb))
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
    column :name do |product|
      link_to product.name, [:admin, product]
    end
    column :category
    column "Creado", :created_at
    column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price, :precision => 0, :delimiter => ".", :separator => ","
      end
    end
    default_actions
  end
end
