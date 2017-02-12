class Accomplishment < ActiveRecord::Base
  validates :name, presence: true
end
