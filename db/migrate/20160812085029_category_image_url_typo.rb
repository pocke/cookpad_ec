class CategoryImageUrlTypo < ActiveRecord::Migration[5.0]
  def change
    rename_column :categories, :iamge_url, :image_url
  end
end
