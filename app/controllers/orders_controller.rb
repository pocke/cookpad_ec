class OrdersController < ApplicationController
  before_action :set_order, only: %i[show update]
  def show
  end

  # check out
  def update
    @order.checkout!
    render :show
  end

  def create
    ActiveRecord::Base.transaction do
      @order = Order.create!(status: :cart)
      @order.checkout!
      line_items_params.each do |p|
        p[:order_id] = @order.id
        LineItem.create!(p)
      end
    end

    render status: :created
  end

  def set_order
    @order = Order.find(params.require(:id))
  end

  def line_items_params
    params.require(:line_items)
      .map{|p| p.permit(:item_id, :quantity)}
  end
end
