class User < ApplicationRecord
  has_many :groups
  has_many :items
end