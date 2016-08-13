class OrdersController < ApplicationController
  before_action :set_order, only: %i[show update]
  def show
  end

  # check out
  def update
    @order.checkout!
    render :show
  end

  def set_order
    @order = Order.find(params.require(:id))
  end
end
