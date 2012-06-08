class Payment < ActiveRecord::Base
  attr_accessible :nombre
  
  validates :nombre, :presence => true

  def to_s
    return self.nombre
  end
end
