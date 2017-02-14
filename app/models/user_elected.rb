class UserElected < ActiveRecord::Base
  belongs_to :elected
  belongs_to :user
end
