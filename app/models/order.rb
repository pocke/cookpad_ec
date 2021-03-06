class Order < ApplicationRecord
  enum status: {cart: 0, checked_out: 1}
  has_many :line_items

  def checkout!
    update!(
      status: :checked_out,
      ordered_at: Time.zone.now,
    )
  end

  def total
    line_items.sum{|i| i.subtotal}
  end
end
