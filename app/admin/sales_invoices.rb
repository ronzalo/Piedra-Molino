ActiveAdmin.register SalesInvoice do
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
      f.input :client, :label => 'Cliente'
    
    f.actions
    end
  end

  show do |i|    
    attributes_table do
        row :folio
        row :fecha_emision
        row :neto do |sale_invoice|
          sale_invoice.neto
        end
        row :total_venta 
        row :client
    end         
  end

  index :download_links => false do
    selectable_column
    column :folio
    column :fecha_emision
    column "Cliente", :client do |inv|
      inv.client.to_s
    end  
    column :total_venta, :sortable => :total_venta do |inv|
      div :class => "precio" do
        number_to_currency inv.total_venta, :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => ","
      end  
    end
    default_actions
  end
end
