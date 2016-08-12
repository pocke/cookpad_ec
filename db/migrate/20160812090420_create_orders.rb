class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :status, null: false
      t.datetime :orderd_at

      t.timestamps
    end
  end
end
