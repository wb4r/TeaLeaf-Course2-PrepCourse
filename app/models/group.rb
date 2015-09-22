class Group < ActiveRecord::Base
  has_many :users, through: :usergroups
  has_many :usergroups
end
