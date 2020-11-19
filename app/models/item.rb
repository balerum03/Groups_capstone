class Item < ApplicationRecord
  belongs_to :user
  has_many :group_of_items
  has_many :groups, through: :group_of_items
end
