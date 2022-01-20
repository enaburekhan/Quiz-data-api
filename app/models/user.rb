class User < ApplicationRecord
  has_secure_password

  has_many :quiz_data, dependent: :destroy

  # validations
  validates_presence_of :email
  validates :password, length: { in: 6..20 }
end
