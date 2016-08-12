class Item < ApplicationRecord
  validates :name, presence: true
  scope :recommended, -> () { where(recommended: true) }
end
