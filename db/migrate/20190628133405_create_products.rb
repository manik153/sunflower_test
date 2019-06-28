class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity, default: 1
      t.integer :price, default: 0
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps
    end
  end
end
