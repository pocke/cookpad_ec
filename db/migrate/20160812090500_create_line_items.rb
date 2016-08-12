class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.references :order, foreign_key: true, index: true, null: false
      t.references :item, foreign_key: true, index: true, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
