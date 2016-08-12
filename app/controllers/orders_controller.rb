class OrdersController < ApplicationController
  def show
    @order = Order.find(params.require(:id))
  end
end
