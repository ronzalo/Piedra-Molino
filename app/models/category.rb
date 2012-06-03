class Category < ActiveRecord::Base
   has_many :families
   has_many :products, :through => :families
   attr_accessible :name, :families_attributes
   
   validates :name, :presence => true, :uniqueness => true
   accepts_nested_attributes_for :families
end
