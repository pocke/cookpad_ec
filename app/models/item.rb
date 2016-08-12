class Item < ApplicationRecord
  validates :name, presence: true
  scope :recommended, -> () { where(recommended: true) }
  scope :randomize, -> () {order('random()')}

  belongs_to :category, optional: true
end
