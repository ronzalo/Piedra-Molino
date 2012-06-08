ActiveAdmin.register Invoice do
  form do |f|
    f.inputs "Factura" do
      f.input :client, :label => "Cliente"
      f.input :tipo_documento, :as => :select, :collection => Invoice::TIPO
      f.input :monto_escrito
      f.input :total_venta
    end
    f.buttons
  end
end
