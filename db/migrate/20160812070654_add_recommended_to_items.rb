class AddRecommendedToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :recommended, :bool, null: false, default: false
  end
end
