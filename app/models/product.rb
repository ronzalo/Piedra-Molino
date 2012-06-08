class Product < ActiveRecord::Base
   attr_accessible :nombre, :precio, :costo_venta, :category_id, :descripcion, :image, :real_stock, :minimum_stock, :maximum_stock, :codigo, :codigo_barra, :ubicacion
  belongs_to :category
  has_many :product_guias
  has_attached_file :image,
  									:default_url => 'no_pic.jpg',
  									:styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :nombre, :presence => true, :uniqueness => true
  validates :precio, :presence => true, :numericality => true
#  validates :real_stock, :presence => true, :numericality => true
  validates :minimum_stock, :presence => true, :numericality => true
  validates :maximum_stock, :presence => true, :numericality => true
  
  def to_s
    return self.nombre
  end
end
