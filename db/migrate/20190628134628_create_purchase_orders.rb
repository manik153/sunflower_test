class CreatePurchaseOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_orders do |t|
      t.float :total_amount, default: 0
      t.datetime :purchase_date

      t.timestamps
    end
  end
end
