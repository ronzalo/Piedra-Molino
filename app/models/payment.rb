class Payment < ActiveRecord::Base
	attr_accessible :name
  has_many :suppliers
  validates :name, :presence => true
end
