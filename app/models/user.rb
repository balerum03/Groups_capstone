class User < ApplicationRecord
  has_many :groups
  has_many :items

  validates :user_name, uniqueness: true
  validates :user_name, length: { in: 2..20 }
end
