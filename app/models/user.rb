class User < ApplicationRecord
  validates :username,  :presence => true, 
                        :uniqueness => true
  validates :first_name, :presence => true
  validates :email, :presence => true, 
                    :uniqueness => true, 
                    email: true
  validates :password,  :presence => true, 
                    :allow_blank => true,
                    :length => {:within => 4..40},
                    :on => [:update]
  validates :password,  :presence => true, 
                        :confirmation => true,
                        :length => {:within => 4..40},
                        :on => :create
  
  
  has_secure_password
end