class Designer < ApplicationRecord

  has_many :jobs
  has_many :customers, :through => :jobs
  


end
