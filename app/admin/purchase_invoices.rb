ActiveAdmin.register PurchaseInvoice do
  menu :parent => 'Facturas'
  
  form do |f|
    f.inputs "Factura de Compra" do
      f.input :folio
      f.input :fecha_emision
      f.input :total_venta
      f.input :supplier, :label => 'Proveedor'
    end
    f.buttons
  end
end
