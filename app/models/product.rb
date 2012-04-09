class Product < ActiveRecord::Base
  attr_accessible :name, :price, :category_id, :description, :image
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_presence_of :name
  validates_presence_of :price
  
end
