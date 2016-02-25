class User < ActiveRecord::Base
  has_one :logindetail
  has_one :address
  has_many :journals
end
