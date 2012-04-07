class Product < ActiveRecord::Base
  attr_accessible :name, :price, :category_id, :description, :comment, :image
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
end
