class User < ApplicationRecord
  has_secure_password

  # validations
  validates_presence_of :email
#   validates_presence_of :password 
  validates :password, length: { in: 6..20 } 
end
