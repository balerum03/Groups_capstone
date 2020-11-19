class Group < ApplicationRecord
  has_many :group_of_items
  has_many :items, through: :group_of_items
  has_one_attached :image, dependent: :destroy
end
