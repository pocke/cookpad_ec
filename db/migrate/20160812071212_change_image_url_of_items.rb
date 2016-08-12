class ChangeImageUrlOfItems < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :image_url, :string, null: false, default: ''
  end
end
