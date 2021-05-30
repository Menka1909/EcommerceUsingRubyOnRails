class CreateProductDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :product_details do |t|
      t.string :ProductName
      t.text :ProductDetail
      t.float :Mrp
      t.float :Discount
      t.float :Tax
      t.float :NetPrice
      t.integer :Sku

      t.timestamps
    end
  end
end
