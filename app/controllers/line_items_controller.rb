class LineItemsController < ApplicationController
  before_action :set_order, only: %i[create]

  def create
    ActiveRecord::Base.transaction do
      LineItem.create!(create_line_item_params(@order.id))
      @order.save!
    end

    redirect_to order_path(@order)
  end


  private

  def create_line_item_params(order_id)
    p = params.require(:line_item).permit(:item_id, :quantity)
    p[:order_id] = order.id
    p
  end

  def set_order
    order_id = session[:current_order_id]
    @order =
      if order_id
        Order.find(order_id)
      else
        Order.new(status: :cart)
      end
  end
end
