json.extract! @order, :id, :ordered_at, :total, :status, :created_at, :updated_at
json.url order_path(@order)
json.line_items @order.line_items do |i|
  json.extract! i, :quantity, :subtotal
end
