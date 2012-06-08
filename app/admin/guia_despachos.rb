ActiveAdmin.register GuiaDespacho do

  form do |f|
    f.inputs "Guia de Despacho" do
#      f.input :client, :label => "Cliente"
      f.input :tipo_documento, :as => :select, :collection => Invoice::TIPO, :include_blank => false
    end
    f.inputs "Productos" do
    f.has_many :product_guias do |p|
      p.input :product
      p.input :cantidad
    end
  end  
    f.actions
  end  
end
