class Product < ActiveRecord::Base
  attr_accessible :name, :price, :category_id, :description, :image
  belongs_to :category
  has_attached_file :image,
  									:default_url => 'no_pic.jpg',
  									:styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_presence_of :name
  validates_presence_of :price
  
end
