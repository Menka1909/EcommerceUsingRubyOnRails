class CreatePlacedOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :placed_orders do |t|
      t.string :Name
      t.integer :Phone
      t.text :Email
      t.text :AddressLine1
      t.text :AddressLine2
      t.text :State
      t.text :City
      t.text :Country
      t.text :ProductName
      t.text :ProductDetail
      t.integer :Sku
      t.float :Mrp
      t.integer :Quantity
      t.float :Discount
      t.float :NetPrice

      t.timestamps
    end
  end
end
