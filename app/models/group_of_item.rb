# frozen_string_literal: true

class GroupOfItem < ApplicationRecord
  belongs_to :item
  belongs_to :group
end
