class Order < ApplicationRecord
  enum status: {not_ordered: 0, checked_out: 1}
  has_many :line_items
end
