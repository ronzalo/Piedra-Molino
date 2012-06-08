class Category < ActiveRecord::Base
   has_many :products
   attr_accessible :name, :products_attributes
   
   validates :name, :presence => true, :uniqueness => true
   accepts_nested_attributes_for :products
end
