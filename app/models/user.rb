class User < ActiveRecord::Base
  has_secure_password
  has_many :user_accomplishments

  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :zipcode, presence: true


end
