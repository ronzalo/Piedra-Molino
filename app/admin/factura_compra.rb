ActiveAdmin.register FacturaCompra do
  menu :parent => "Facturas"
  
  form do |f|
  f.inputs "Factura de Compra" do
    f.input :folio, :hint => "Folio de la factura de su proveedor", :as => :string
    f.input :supplier, :label => "Proveedor"
    f.input :fecha_emision
  end
  f.buttons
  end
end
