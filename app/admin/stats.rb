ActiveAdmin.register_page "Logistica" do
  menu :label => "Logistica"
  
  content "Facturas emitidas mes pasado" do
    h1 number_with_delimiter(SalesInvoice.where('fecha_emision >= ?', Date.new(Time.now.year, Time.now - 1.month, 1).to_datetime).count)
  end

  content "Facturas emitidas este mes" do
    h1 number_with_delimiter(SalesInvoice.where('fecha_emision >= ?', Date.new(Time.now.year, Time.now.month, 1).to_datetime).count)
  end

  sidebar :Ayuda do
  	@products = Product.all
    render :partial => 'stats/chart', :locals => { :products => @products }
  end
end
