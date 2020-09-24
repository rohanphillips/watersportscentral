class User < ApplicationRecord
  has_many :locations
  has_many :locations, through: :events
  has_many :events, through: :locations
  has_many :events, through: :sports
  has_many :comments, through: :events
  has_many :comments, through: :locations
  has_many :sports
  
  
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