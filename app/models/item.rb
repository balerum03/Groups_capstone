class Item < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_of_items
  has_many :groups, through: :group_of_items

  validates :name, presence: true
  validates :amount, presence: true
end
