class SalesWaybill < ActiveRecord::Base
  set_table_name 'guias_ventas'
  has_many :det_documento, :foreign_key => 'guia_venta_id'
  belongs_to :client, :foreign_key => 'cliente_id'
  attr_accessible :cliente_id, :total_venta, :folio, :fecha_emision, :neto, :det_documento_attributes
  accepts_nested_attributes_for :det_documento

  # after_save :neto
  
  def folio
    self.id
  end
  
  def neto
    id_f = self.id
    sql = ActiveRecord::Base.connection();
    sql.execute "call set_neto_sale_i(#{id_f})";
    sql.begin_db_transaction
  end
end
