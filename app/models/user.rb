class User < ApplicationRecord
  validates :username, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :email, :presence => true, :uniqueness => true, email: true
  has_secure_password
end