class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :OrderNumber
      t.date :DateOfOrder
      t.text :OrderStatus
      t.text :BillingAddress
      t.text :ShippingAddress
      t.integer :customer_id

      t.timestamps
    end
  end
end
