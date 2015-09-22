class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :usergroups
  has_many :groups, through: :usergroups

  validates :name, presence: true,
                  length: { minimum: 2 }

  validates :email, presence: true,
                  length: { minimum: 5 }
end
