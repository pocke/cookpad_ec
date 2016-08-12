class AddCategoryIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :category, null: true, index: true, foreign_key: true
  end
end
