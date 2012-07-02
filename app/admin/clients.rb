ActiveAdmin.register Client do
  
  filter :nombre
  filter :empresa
  filter :email

  form do |f|
    f.inputs  do
      f.input :rut, :hint => 'Formato: 12345678-9'                                                                                                                                                                                                      
      f.input :nombre
      f.input :apellido
      f.input :empresa
      f.input :email
      f.input :direccion
      f.input :comuna
      f.input :ciudad
      f.input :telefono
      f.input :modo_pago
      f.input :saldo
      f.input :credito_asignado
    end  
    f.actions
  end

  index :download_links => false do
  	selectable_column
  	column :rut
  	column :nombre do |client|
  		p "#{client.nombre} #{client.apellido}"
  	end
  	column :saldo
  	column :empresa
  	column :email
  	default_actions
  end

  sidebar "Total Facturado", :only => :show do
    h1 number_to_currency(SalesInvoice.where(:cliente_id => client.id).all.sum(&:total_venta), :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => ","), :style => "text-align: center; margin-top: 20px;"
  end

  sidebar "Ultimas Facturas", :only => :show do
    table_for SalesInvoice.where(:cliente_id => client.id).order('created_at desc').limit(5).all do |t|
      t.column("Folio") { |invoice| h3 invoice.id }
      t.column("Total") { |invoice| number_to_currency invoice.total_venta, :locale => "es-Cl", :precision => 0, :delimiter => ".", :separator => "," }
    end
  end

end
