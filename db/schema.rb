# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_30_011850) do

  create_table "addresses", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.text "AddressLine1"
    t.text "AddressLine2"
    t.text "City"
    t.text "State"
    t.text "Country"
    t.integer "Pin"
    t.integer "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.text "Email"
    t.text "AddressLine1"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "OrderNumber"
    t.date "DateOfOrder"
    t.text "OrderStatus"
    t.text "BillingAddress"
    t.text "ShippingAddress"
    t.integer "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "placed_orders", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.text "Email"
    t.text "AddressLine1"
    t.text "AddressLine2"
    t.text "State"
    t.text "City"
    t.text "Country"
    t.text "ProductName"
    t.text "ProductDetail"
    t.integer "Sku"
    t.float "Mrp"
    t.integer "Quantity"
    t.float "Discount"
    t.float "NetPrice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_details", force: :cascade do |t|
    t.string "ProductName"
    t.text "ProductDetail"
    t.float "Mrp"
    t.float "Discount"
    t.float "Tax"
    t.float "NetPrice"
    t.integer "Sku"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "Sku"
    t.float "Mrp"
    t.integer "Quantity"
    t.float "Discount"
    t.float "NetPrice"
    t.integer "order_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
