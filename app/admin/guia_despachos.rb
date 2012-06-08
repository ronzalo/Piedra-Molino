ActiveAdmin.register GuiaDespacho do

  before_filter :only => :index do
   @per_page = 5
  end


  form do |f|
    f.inputs "Guia de Despacho" do
      f.input :client_id, :label => "Cliente", :as => :select, :collection => Client.all
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
