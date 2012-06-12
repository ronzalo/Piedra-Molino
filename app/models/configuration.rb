class Configuration < ActiveRecord::Base

  set_table_name 'configuraciones'
  attr_accessible :nombre, :valor
end
