class AdminUser < ActiveRecord::Base
  
  set_table_name 'usuarios'
  ROLES = %w[admin bodega venta]
  
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :rol, :password, :password_confirmation, :remember_me
  validates :email, :rol, :presence => true
  
end
