class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :Name
      t.integer :Phone
      t.text :Email
      t.text :AddressLine1

      t.timestamps
    end
  end
end
