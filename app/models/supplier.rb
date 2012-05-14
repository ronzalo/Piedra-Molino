require 'valid_email'
class Supplier < ActiveRecord::Base
  attr_accessible :account, :bank, :code, :email, :legal_id, :name, :observation, :payment_conditions, :web_page
  belongs_to :payment
  validates :name, :presence => true, :uniqueness => true
  validates :bank, :presence => true
  validates :account, :presence => true
  validates_format_of :web_page, :with => URI::regexp(%w(http https))
  validates :code, :length => {:maximum => 6, :minimum => 4} 
  validates :email, :presence => true, :email => true
end


