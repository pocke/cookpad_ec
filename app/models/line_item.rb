class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  def subtotal
    quantity * item.price
  end
end
