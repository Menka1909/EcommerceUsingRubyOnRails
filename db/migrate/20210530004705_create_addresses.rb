class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :Name
      t.integer :Phone
      t.text :AddressLine1
      t.text :AddressLine2
      t.text :City
      t.text :State
      t.text :Country
      t.integer :Pin
      t.integer :customer_id

      t.timestamps
    end
  end
end
