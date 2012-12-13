ActiveAdmin.register SalesWaybill do
  menu false
  form do |f|
    f.inputs do

    f.has_many :det_documento do |p|
      p.input :product
      p.input :cantidad      
    end
    
      f.input :fecha_emision, :as => :datepicker, :input_html => {:class => "input_mediano"}
      f.input :client, :label => 'Cliente'
    
    f.actions
    end
  end

  show do
  	panel "Detalles de  de Venta" do
	  	attributes_table do
	        row :folio
	        row :fecha_emision
	        row :neto 
	        row :total_venta 
	        row :client
	    end
    end
  end
end
