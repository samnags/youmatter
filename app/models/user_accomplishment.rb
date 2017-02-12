class UserAccomplishment < ActiveRecord::Base
  belongs_to :user
  belongs_to :accomplishment

  validates :user_id, presence: true
  validates :accomplishment_id, presence: true


end
