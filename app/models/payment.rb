class Payment < ActiveRecord::Base

  set_table_name 'pagos'
  attr_accessible :nombre
  
  validates :nombre, :presence => true, :uniqueness => true

  def to_s
    return self.nombre
  end
end
