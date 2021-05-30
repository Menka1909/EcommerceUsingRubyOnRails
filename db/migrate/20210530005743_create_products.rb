class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :Sku
      t.float :Mrp
      t.integer :Quantity
      t.float :Discount
      t.float :NetPrice
      t.integer :order_id

      t.timestamps
    end
  end
end
