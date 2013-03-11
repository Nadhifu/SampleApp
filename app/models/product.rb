class Product < ActiveRecord::Base
  attr_accessible :description, :price, :sku
     validates :sku, 
            :presence => true,
			:uniqueness => true,
			:length => { is: 5 } 
	 validates :price,
            :presence => true
   	 validates :description, 
            :presence => true
			
			
			 
  
end
