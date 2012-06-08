class GuiaDespacho < ActiveRecord::Base

  TIPO = %w[Venta Compra] 
  attr_accessible :product_guias_attributes, :folio, :fecha_emision, :monto_escrito, :client_id, :tipo_documento, :total_venta
  has_many :product_guias, :dependent => :destroy
  accepts_nested_attributes_for :product_guias
  after_create :total_venta
  
  def total_venta
    id = self.id
    sql = ActiveRecord::Base.connection();
    sql.execute("call set_fecha_emision(#{id})")
    sql.commit_db_transaction 
  end 
  
end
