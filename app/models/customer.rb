class Customer < ApplicationRecord
  
  has_many :jobs
  has_many :designers, :through => :jobs
  
 
  
  #attr_accessor :customer_id #this has to be :customer_id, not just :id (fixed the option values not displaying in 
  #collection_select) 
end
