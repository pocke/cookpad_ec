class Item < ApplicationRecord
  validates :name, presence: true
  scope :recommended, -> () { where(recommended: true) }
  scope :randomize, -> () {order('random()')}
  scope :uncategorized, -> () {where(category_id: nil)}

  belongs_to :category, optional: true
end
