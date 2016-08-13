class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :iamge_url, null: false, default: ''

      t.timestamps
    end
  end
end
