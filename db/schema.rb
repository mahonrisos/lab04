# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110211012708) do

  create_table "clients", :force => true do |t|
    t.text     "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "nit"
  end

  add_index "clients", ["nit"], :name => "index_clients_on_nit", :unique => true

  create_table "orders", :force => true do |t|
    t.text     "code"
    t.date     "date"
    t.integer  "client_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.text     "code"
    t.float    "price"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

end
