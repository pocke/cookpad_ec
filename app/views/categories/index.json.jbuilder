json.array! @categories do |category|
  json.id category.id
  json.name category.name
  json.image_url image_url category.image_url
  json.category_items_url category_items_url category
end
