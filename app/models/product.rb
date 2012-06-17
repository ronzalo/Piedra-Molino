class Product < ActiveRecord::Base

  set_table_name 'productos'
  attr_accessible :codigo, :descripcion, :precio, :costo, :categoria_id, :stock_real, :stock_minimo, :stock_maximo
  belongs_to :category, :foreign_key => 'categoria_id'

#  has_attached_file :image,
#  									:default_url => 'no_pic.jpg',
#  									:styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :descripcion, :presence => true, :uniqueness => true
  validates :precio, :presence => true, :numericality => {:greater_than_or_equal_to => 1}
  validates :stock_minimo, :presence => true, :numericality => {:greater_than_or_equal_to => 1}
  validates :stock_maximo, :presence => true, :numericality => true
#  
  def to_s
    return self.descripcion
  end
end
