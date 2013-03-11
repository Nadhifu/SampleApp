class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :name, :sex, :ssn, :state, :telephone, :zipcode
  validates :ssn, :uniqueness => true
  validates :ssn, :numericality => { :only_integer => true } 
  validates :ssn, :address, :city, :name, :sex, :state, :telephone, :zipcode, :presence => true
  validates :ssn, :length => { :is => 8 }
end
