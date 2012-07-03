class SalesInvoice < ActiveRecord::Base
  set_table_name 'facturas_ventas'
  has_many :det_documento, :foreign_key => 'factura_venta_id'
  belongs_to :client, :foreign_key => 'cliente_id'
  attr_accessible :cliente_id, :total_venta, :folio, :fecha_emision, :neto, :det_documento_attributes
  accepts_nested_attributes_for :det_documento

  after_save :set_neto
  
  def folio
    self.id
  end
  
  def set_neto
    id_f = self.id
    sql = ActiveRecord::Base.connection();
    sql.execute "call set_neto_sale_i(#{id_f})";
    sql.begin_db_transaction
  end

  def this_month
    where('fecha_emision >= ?', Date.new(Time.now.year, Time.now.month, 1).to_datetime)
  end
end
