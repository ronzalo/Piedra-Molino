class Configuration < ActiveRecord::Base
  set_table_name 'configuraciones'  
  validates :nombre, :valor, :presence => true, :uniqueness => true 
  attr_accessible :nombre, :valor
end
