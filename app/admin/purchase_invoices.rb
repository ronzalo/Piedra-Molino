ActiveAdmin.register PurchaseInvoice do
  menu :parent => 'Facturas'
  
  before_filter :only => :index do
    @per_page = 10
  end

  form do |f|
    f.inputs do

    f.has_many :det_documento do |p|
      p.input :product
      p.input :cantidad      
    end
    
      f.input :fecha_emision, :as => :datepicker, :input_html => {:class => "input_mediano"}
      f.input :supploer, :label => 'Proveedor'
    
    f.actions
    end
  end
end
