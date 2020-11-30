# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :user
  has_many :group_of_items
  has_many :items, through: :group_of_items
  has_one_attached :image, dependent: :destroy
end
