class User < ActiveRecord::Base
  has_secure_password
  has_many :user_accomplishments
  has_many :accomplishments, through: :user_accomplishments

  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :zipcode, presence: true

  def available_accomplishments
    Accomplishment.all.reject { |acc| self  .accomplishments.include?(acc)}
  end

end

# Accomplishment.all.pluck(:id).reject { |id| user.accomplishments.pluck(:id).include?(id)}
