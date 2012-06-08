class ProductGuia < ActiveRecord::Base
  attr_accessible :product_id, :guia_despacho_id, :cantidad, :sub_total
  belongs_to :guia_despacho
  belongs_to :product  
  
  after_create :set_sub_total
  
  def set_sub_total
    id = self.id
    @product = Product.find(self.product_id)
    precio = @product.precio
    sub_total = precio * self.cantidad
    sql = ActiveRecord::Base.connection();
    sql.update "UPDATE product_guia SET sub_total=#{sub_total} WHERE id=#{id}";
    sql.commit_db_transaction 
  end
end
