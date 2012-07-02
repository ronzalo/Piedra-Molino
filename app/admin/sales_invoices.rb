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
        row("Cliente") {|invoice| invoice.client}
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

  sidebar "Items Facturados", :only => :show do
    table_for DetDocumento.where(:factura_venta_id => sales_invoice.id).all do |t|
      t.column("Cantidad") { |invoice| h3 invoice.cantidad }
      t.column("Producto") { |invoice| h3 invoice.product.descripcion }
    end
  end
  
  sidebar "Total", :only => :show do
    h1 number_to_currency(sales_invoice.total_venta, :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => ","), :style => "text-align: center; margin-top: 20px"
  end


end
