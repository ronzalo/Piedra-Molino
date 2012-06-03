class Family < ActiveRecord::Base
  attr_accessible :name, :category_id, :products_attributes
  has_many :products
  belongs_to :category
  validates :name, :presence => true, :uniqueness => true
  accepts_nested_attributes_for :products
end
