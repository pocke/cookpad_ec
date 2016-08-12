class LineItemsController < ApplicationController
  def create
    order = ActiveRecord::Base.transaction do
      # XXX: orderd_at ってつづりあってる？
      order = Order.create!(status: :checked_out, orderd_at: Time.zone.now)
      p = create_line_item_params
      p[:order_id] = order.id
      LineItem.create! p
      order
    end

    redirect_to order_path(order)
  end


  private

  def create_line_item_params
    params.require(:line_item).permit(:item_id, :quantity)
  end
end
