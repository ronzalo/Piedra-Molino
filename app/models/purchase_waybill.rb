class PurchaseWaybill < ActiveRecord::Base
  set_table_name 'guias_compras'
  has_many :det_documento, :foreign_key => 'guia_compra_id'
end
