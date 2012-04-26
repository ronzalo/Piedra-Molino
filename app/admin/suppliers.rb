ActiveAdmin.register Supplier do
config.comments = false 

form do |f|
  f.inputs "Proveedor" do
  f.input :name, :label => "Nombre"
  f.input :code, :label => "Codigo"
  f.input :email, :label => "Email"
  f.input :web_page, :label => "Pagina Web"
  f.input :bank, :label => "Banco"
  f.input :account, :label => "Cuenta"
  f.input :payment_conditions, :label => "Metodo de Pago"
  f.input :observation, :input_html => {:rows => 5, :cols => 10}, :label => "Observaciones"
  f.buttons
    end
  end  
  
end
