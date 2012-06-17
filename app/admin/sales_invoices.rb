ActiveAdmin.register SalesInvoice do
  menu :parent => 'Facturas'
  
  form do |f|
    f.inputs "Factura de Venta" do
      f.input :fecha_emision
      f.input :neto
      f.input :client, :label => 'Cliente'
    end
    f.has_many :det_documento do |p|
      p.input :product
      p.input :cantidad
      
    end
    f.buttons
  end
end
