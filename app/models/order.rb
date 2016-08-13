class Order < ApplicationRecord
  enum status: {cart: 0, checked_out: 1}
  has_many :line_items

  def checkout!
    update!(
      status: :checked_out,
      orderd_at: Time.zone.now,
    )
  end
end
