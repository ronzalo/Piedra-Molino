class SalesWaybill < ActiveRecord::Base
  set_table_name 'guias_ventas'
  has_many :det_documento, :foreign_key => 'guia_venta_id'
end
