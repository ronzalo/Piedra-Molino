class Category < ActiveRecord::Base

  set_table_name 'categorias'   
    
  has_many :products, :foreign_key => 'categoria_id'
  attr_accessible :nombre, :products_attributes
   
  validates :nombre, :presence => true, :uniqueness => true
  accepts_nested_attributes_for :products
  
  def to_s
    self.nombre
  end
    
end
